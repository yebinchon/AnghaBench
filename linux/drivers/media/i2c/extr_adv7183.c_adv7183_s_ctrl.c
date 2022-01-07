
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; int id; } ;


 int ADV7183_BRIGHTNESS ;
 int ADV7183_CONTRAST ;
 int ADV7183_SD_OFFSET_CB ;
 int ADV7183_SD_OFFSET_CR ;
 int ADV7183_SD_SATURATION_CB ;
 int ADV7183_SD_SATURATION_CR ;
 int EINVAL ;




 int adv7183_write (struct v4l2_subdev*,int ,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int adv7183_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 int val = ctrl->val;

 switch (ctrl->id) {
 case 131:
  if (val < 0)
   val = 127 - val;
  adv7183_write(sd, ADV7183_BRIGHTNESS, val);
  break;
 case 130:
  adv7183_write(sd, ADV7183_CONTRAST, val);
  break;
 case 128:
  adv7183_write(sd, ADV7183_SD_SATURATION_CB, val >> 8);
  adv7183_write(sd, ADV7183_SD_SATURATION_CR, (val & 0xFF));
  break;
 case 129:
  adv7183_write(sd, ADV7183_SD_OFFSET_CB, val >> 8);
  adv7183_write(sd, ADV7183_SD_OFFSET_CR, (val & 0xFF));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
