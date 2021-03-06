require("../dropdown.tag");
<dashboard-header>
  <div class="dashboard-header">
    <h2>
      <span>All Stars</span>
    </h2>
    <div class="tag-settings-trigger">
      <i class="fa fa-cog"></i>
      <div class="dropdown" hide={true}>
        <form  class="frm-tagname">
          <input type="text">
          <button class="btn-flat" type="submit">Save</button>
        </form>
        <button class="btn-flat btn-danger">Delete Tag</button>
      </div>
    </div>
    <label for="galileo">
      <input type="text" id="galileo" class="telescope" placeholder="Gaze through your telescope">
      <i class="fa fa-search"></i>
    </label>
    <div class="user-dropdown-trigger dropdown-trigger">
      <img src="{user.avatar_url}" alt="{user.name}" class="user-avatar"/>
      <span class="user-username">{user.username}</span>
      <i class="fa fa-chevron-down"></i>
      <dropdown trigger=".user-dropdown-trigger">
        <li><a >Settings</a></li>
        <li><a href="mailto:hello@astralapp.com">Support &amp; Feedback</a></li>
        <li><a href="https://gratipay.com/syropian/" target="_blank"><i class="fa fa-heart"></i> Gratipay</a></li>
        <li><a href="javascript:void(0)" onclick={parent.signOut}>Sign Out</a></li>
      </dropdown>
    </div>
  </div>

  import RiotControl from "riotcontrol";
  import ls from "local-storage";

  this.user = {}

  this.signOut = (e) => {
    RiotControl.trigger("user_signed_out");
    window.location = "/";
  }

  this.on("mount", () => {
    this.user = ls("user");
    this.update();
  });
</dashboard-header>
