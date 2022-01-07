
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct ov7670_info {TYPE_4__* exposure; TYPE_3__* gain; TYPE_2__* hue; TYPE_1__* saturation; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int val; } ;


 int EINVAL ;
 int V4L2_EXPOSURE_MANUAL ;
 int ov7670_s_autoexp (struct v4l2_subdev*,int ) ;
 int ov7670_s_autogain (struct v4l2_subdev*,int ) ;
 int ov7670_s_brightness (struct v4l2_subdev*,int ) ;
 int ov7670_s_contrast (struct v4l2_subdev*,int ) ;
 int ov7670_s_exp (struct v4l2_subdev*,int ) ;
 int ov7670_s_gain (struct v4l2_subdev*,int ) ;
 int ov7670_s_hflip (struct v4l2_subdev*,int ) ;
 int ov7670_s_sat_hue (struct v4l2_subdev*,int ,int ) ;
 int ov7670_s_test_pattern (struct v4l2_subdev*,int ) ;
 int ov7670_s_vflip (struct v4l2_subdev*,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct ov7670_info *info = to_state(sd);

 switch (ctrl->id) {
 case 134:
  return ov7670_s_brightness(sd, ctrl->val);
 case 133:
  return ov7670_s_contrast(sd, ctrl->val);
 case 130:
  return ov7670_s_sat_hue(sd,
    info->saturation->val, info->hue->val);
 case 128:
  return ov7670_s_vflip(sd, ctrl->val);
 case 131:
  return ov7670_s_hflip(sd, ctrl->val);
 case 135:


  if (!ctrl->val) {

   return ov7670_s_gain(sd, info->gain->val);
  }
  return ov7670_s_autogain(sd, ctrl->val);
 case 132:


  if (ctrl->val == V4L2_EXPOSURE_MANUAL) {

   return ov7670_s_exp(sd, info->exposure->val);
  }
  return ov7670_s_autoexp(sd, ctrl->val);
 case 129:
  return ov7670_s_test_pattern(sd, ctrl->val);
 }
 return -EINVAL;
}
