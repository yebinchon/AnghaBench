
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct ov5640_dev {scalar_t__ power_count; } ;


 int EINVAL ;
 struct v4l2_subdev* ctrl_to_sd (struct v4l2_ctrl*) ;
 int ov5640_set_ctrl_contrast (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_exposure (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_gain (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_hflip (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_hue (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_light_freq (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_saturation (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_test_pattern (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_vflip (struct ov5640_dev*,int ) ;
 int ov5640_set_ctrl_white_balance (struct ov5640_dev*,int ) ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5640_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sd(ctrl);
 struct ov5640_dev *sensor = to_ov5640_dev(sd);
 int ret;
 if (sensor->power_count == 0)
  return 0;

 switch (ctrl->id) {
 case 137:
  ret = ov5640_set_ctrl_gain(sensor, ctrl->val);
  break;
 case 134:
  ret = ov5640_set_ctrl_exposure(sensor, ctrl->val);
  break;
 case 136:
  ret = ov5640_set_ctrl_white_balance(sensor, ctrl->val);
  break;
 case 132:
  ret = ov5640_set_ctrl_hue(sensor, ctrl->val);
  break;
 case 135:
  ret = ov5640_set_ctrl_contrast(sensor, ctrl->val);
  break;
 case 130:
  ret = ov5640_set_ctrl_saturation(sensor, ctrl->val);
  break;
 case 129:
  ret = ov5640_set_ctrl_test_pattern(sensor, ctrl->val);
  break;
 case 131:
  ret = ov5640_set_ctrl_light_freq(sensor, ctrl->val);
  break;
 case 133:
  ret = ov5640_set_ctrl_hflip(sensor, ctrl->val);
  break;
 case 128:
  ret = ov5640_set_ctrl_vflip(sensor, ctrl->val);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
