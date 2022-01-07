
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; int name; } ;
struct ov965x {scalar_t__ power; int lock; } ;


 int EINVAL ;
 struct v4l2_subdev* ctrl_to_sd (struct v4l2_ctrl*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov965x_set_banding_filter (struct ov965x*,int ) ;
 int ov965x_set_brightness (struct ov965x*,int ) ;
 int ov965x_set_exposure (struct ov965x*,int ) ;
 int ov965x_set_flip (struct ov965x*) ;
 int ov965x_set_gain (struct ov965x*,int ) ;
 int ov965x_set_saturation (struct ov965x*,int ) ;
 int ov965x_set_sharpness (struct ov965x*,int ) ;
 int ov965x_set_test_pattern (struct ov965x*,int ) ;
 int ov965x_set_white_balance (struct ov965x*,int ) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ,scalar_t__) ;

__attribute__((used)) static int ov965x_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sd(ctrl);
 struct ov965x *ov965x = to_ov965x(sd);
 int ret = -EINVAL;

 v4l2_dbg(1, debug, sd, "s_ctrl: %s, value: %d. power: %d\n",
   ctrl->name, ctrl->val, ov965x->power);

 mutex_lock(&ov965x->lock);




 if (ov965x->power == 0) {
  mutex_unlock(&ov965x->lock);
  return 0;
 }

 switch (ctrl->id) {
 case 135:
  ret = ov965x_set_white_balance(ov965x, ctrl->val);
  break;

 case 134:
  ret = ov965x_set_brightness(ov965x, ctrl->val);
  break;

 case 133:
  ret = ov965x_set_exposure(ov965x, ctrl->val);
  break;

 case 136:
  ret = ov965x_set_gain(ov965x, ctrl->val);
  break;

 case 132:
  ret = ov965x_set_flip(ov965x);
  break;

 case 131:
  ret = ov965x_set_banding_filter(ov965x, ctrl->val);
  break;

 case 130:
  ret = ov965x_set_saturation(ov965x, ctrl->val);
  break;

 case 129:
  ret = ov965x_set_sharpness(ov965x, ctrl->val);
  break;

 case 128:
  ret = ov965x_set_test_pattern(ov965x, ctrl->val);
  break;
 }

 mutex_unlock(&ov965x->lock);
 return ret;
}
