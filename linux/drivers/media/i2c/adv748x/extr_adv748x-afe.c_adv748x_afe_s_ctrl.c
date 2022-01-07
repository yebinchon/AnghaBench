
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct adv748x_state {int dummy; } ;
struct adv748x_afe {int dummy; } ;


 int ADV748X_SDP_BRI ;
 int ADV748X_SDP_CON ;
 int ADV748X_SDP_DEF ;
 int ADV748X_SDP_DEF_VAL_EN ;
 int ADV748X_SDP_FRP ;
 int ADV748X_SDP_FRP_MASK ;
 int ADV748X_SDP_HUE ;
 int ADV748X_SDP_SD_SAT_U ;
 int ADV748X_SDP_SD_SAT_V ;
 int EINVAL ;





 struct adv748x_state* adv748x_afe_to_state (struct adv748x_afe*) ;
 struct adv748x_afe* adv748x_ctrl_to_afe (struct v4l2_ctrl*) ;
 int sdp_clrset (struct adv748x_state*,int ,int ,int) ;
 int sdp_write (struct adv748x_state*,int,int) ;

__attribute__((used)) static int adv748x_afe_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct adv748x_afe *afe = adv748x_ctrl_to_afe(ctrl);
 struct adv748x_state *state = adv748x_afe_to_state(afe);
 bool enable;
 int ret;

 ret = sdp_write(state, 0x0e, 0x00);
 if (ret < 0)
  return ret;

 switch (ctrl->id) {
 case 132:
  ret = sdp_write(state, ADV748X_SDP_BRI, ctrl->val);
  break;
 case 130:

  ret = sdp_write(state, ADV748X_SDP_HUE, -ctrl->val);
  break;
 case 131:
  ret = sdp_write(state, ADV748X_SDP_CON, ctrl->val);
  break;
 case 129:
  ret = sdp_write(state, ADV748X_SDP_SD_SAT_U, ctrl->val);
  if (ret)
   break;
  ret = sdp_write(state, ADV748X_SDP_SD_SAT_V, ctrl->val);
  break;
 case 128:
  enable = !!ctrl->val;


  ret = sdp_clrset(state, ADV748X_SDP_DEF, ADV748X_SDP_DEF_VAL_EN,
    enable);
  if (ret)
   break;
  ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK,
    enable ? ctrl->val - 1 : 0);
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
