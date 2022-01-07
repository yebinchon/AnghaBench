
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_ctrl {int id; int val; } ;
struct adv748x_state {int dummy; } ;
struct adv748x_hdmi {int dummy; } ;


 int ADV748X_CP_BRI ;
 int ADV748X_CP_CON ;
 int ADV748X_CP_HUE ;
 int ADV748X_CP_PAT_GEN ;
 int ADV748X_CP_PAT_GEN_EN ;
 int ADV748X_CP_SAT ;
 int ADV748X_CP_VID_ADJ ;
 int ADV748X_CP_VID_ADJ_ENABLE ;
 int EINVAL ;





 struct adv748x_hdmi* adv748x_ctrl_to_hdmi (struct v4l2_ctrl*) ;
 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 int cp_clrset (struct adv748x_state*,int ,int ,int ) ;
 int cp_write (struct adv748x_state*,int ,int ) ;

__attribute__((used)) static int adv748x_hdmi_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct adv748x_hdmi *hdmi = adv748x_ctrl_to_hdmi(ctrl);
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);
 int ret;
 u8 pattern;


 ret = cp_clrset(state, ADV748X_CP_VID_ADJ,
   ADV748X_CP_VID_ADJ_ENABLE,
   ADV748X_CP_VID_ADJ_ENABLE);
 if (ret < 0)
  return ret;

 switch (ctrl->id) {
 case 132:
  ret = cp_write(state, ADV748X_CP_BRI, ctrl->val);
  break;
 case 130:
  ret = cp_write(state, ADV748X_CP_HUE, ctrl->val);
  break;
 case 131:
  ret = cp_write(state, ADV748X_CP_CON, ctrl->val);
  break;
 case 129:
  ret = cp_write(state, ADV748X_CP_SAT, ctrl->val);
  break;
 case 128:
  pattern = ctrl->val;


  if (pattern) {
   pattern--;
   pattern |= ADV748X_CP_PAT_GEN_EN;
  }

  ret = cp_write(state, ADV748X_CP_PAT_GEN, pattern);

  break;
 default:
  return -EINVAL;
 }

 return ret;
}
