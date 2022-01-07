
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; int name; } ;
struct s5k5baf {scalar_t__ power; int lock; int apply_cfg; } ;


 int REG_P_COLORTEMP (int ) ;
 int REG_USER_BRIGHTNESS ;
 int REG_USER_CONTRAST ;
 int REG_USER_SATURATION ;
 int REG_USER_SHARPBLUR ;
 struct v4l2_subdev* ctrl_to_sd (struct v4l2_ctrl*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k5baf_clear_error (struct s5k5baf*) ;
 int s5k5baf_hw_set_anti_flicker (struct s5k5baf*,int ) ;
 int s5k5baf_hw_set_auto_exposure (struct s5k5baf*,int ) ;
 int s5k5baf_hw_set_awb (struct s5k5baf*,int ) ;
 int s5k5baf_hw_set_colorfx (struct s5k5baf*,int ) ;
 int s5k5baf_hw_set_mirror (struct s5k5baf*) ;
 int s5k5baf_hw_set_test_pattern (struct s5k5baf*,int ) ;
 int s5k5baf_hw_sync_cfg (struct s5k5baf*) ;
 int s5k5baf_write (struct s5k5baf*,int ,int ) ;
 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int s5k5baf_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sd(ctrl);
 struct s5k5baf *state = to_s5k5baf(sd);
 int ret;

 v4l2_dbg(1, debug, sd, "ctrl: %s, value: %d\n", ctrl->name, ctrl->val);

 mutex_lock(&state->lock);

 if (state->power == 0)
  goto unlock;

 switch (ctrl->id) {
 case 138:
  s5k5baf_hw_set_awb(state, ctrl->val);
  break;

 case 137:
  s5k5baf_write(state, REG_USER_BRIGHTNESS, ctrl->val);
  break;

 case 136:
  s5k5baf_hw_set_colorfx(state, ctrl->val);
  break;

 case 135:
  s5k5baf_write(state, REG_USER_CONTRAST, ctrl->val);
  break;

 case 134:
  s5k5baf_hw_set_auto_exposure(state, ctrl->val);
  break;

 case 133:
  s5k5baf_hw_set_mirror(state);
  break;

 case 132:
  s5k5baf_hw_set_anti_flicker(state, ctrl->val);
  break;

 case 131:
  s5k5baf_write(state, REG_USER_SATURATION, ctrl->val);
  break;

 case 130:
  s5k5baf_write(state, REG_USER_SHARPBLUR, ctrl->val);
  break;

 case 128:
  s5k5baf_write(state, REG_P_COLORTEMP(0), ctrl->val);
  if (state->apply_cfg)
   s5k5baf_hw_sync_cfg(state);
  break;

 case 129:
  s5k5baf_hw_set_test_pattern(state, ctrl->val);
  break;
 }
unlock:
 ret = s5k5baf_clear_error(state);
 mutex_unlock(&state->lock);
 return ret;
}
