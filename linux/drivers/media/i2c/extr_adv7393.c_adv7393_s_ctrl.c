
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int ADV7393_DAC123_OUTPUT_LEVEL ;
 int ADV7393_HUE_MIN ;
 int ADV7393_SD_BRIGHTNESS_WSS ;
 int ADV7393_SD_HUE_ADJUST ;
 int EINVAL ;
 int SD_BRIGHTNESS_VALUE_MASK ;



 int adv7393_write (struct v4l2_subdev*,int ,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int adv7393_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 130:
  return adv7393_write(sd, ADV7393_SD_BRIGHTNESS_WSS,
     ctrl->val & SD_BRIGHTNESS_VALUE_MASK);

 case 128:
  return adv7393_write(sd, ADV7393_SD_HUE_ADJUST,
     ctrl->val - ADV7393_HUE_MIN);

 case 129:
  return adv7393_write(sd, ADV7393_DAC123_OUTPUT_LEVEL,
     ctrl->val);
 }
 return -EINVAL;
}
