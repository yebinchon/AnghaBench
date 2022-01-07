
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int ADV7343_DAC2_OUTPUT_LEVEL ;
 int ADV7343_SD_BRIGHTNESS_WSS ;
 int ADV7343_SD_HUE_REG ;
 int EINVAL ;



 int adv7343_write (struct v4l2_subdev*,int ,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int adv7343_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 130:
  return adv7343_write(sd, ADV7343_SD_BRIGHTNESS_WSS,
     ctrl->val);

 case 128:
  return adv7343_write(sd, ADV7343_SD_HUE_REG, ctrl->val);

 case 129:
  return adv7343_write(sd, ADV7343_DAC2_OUTPUT_LEVEL, ctrl->val);
 }
 return -EINVAL;
}
