
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl {int id; int val; } ;
struct TYPE_3__ {int agc; int sharpness; int picture; int quality; int framerate; } ;
struct TYPE_4__ {int brightness; int hue; int contrast; int colour; int lock; TYPE_1__ params; } ;


 int EINVAL ;
 int SONY_PIC_COMMAND_SETCAMERAAGC ;
 int SONY_PIC_COMMAND_SETCAMERABRIGHTNESS ;
 int SONY_PIC_COMMAND_SETCAMERACOLOR ;
 int SONY_PIC_COMMAND_SETCAMERACONTRAST ;
 int SONY_PIC_COMMAND_SETCAMERAHUE ;
 int SONY_PIC_COMMAND_SETCAMERAPICTURE ;
 int SONY_PIC_COMMAND_SETCAMERASHARPNESS ;
 TYPE_2__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sony_pic_camera_command (int ,int) ;

__attribute__((used)) static int meye_s_ctrl(struct v4l2_ctrl *ctrl)
{
 mutex_lock(&meye.lock);
 switch (ctrl->id) {
 case 136:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERABRIGHTNESS, ctrl->val);
  meye.brightness = ctrl->val << 10;
  break;
 case 134:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERAHUE, ctrl->val);
  meye.hue = ctrl->val << 10;
  break;
 case 135:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERACONTRAST, ctrl->val);
  meye.contrast = ctrl->val << 10;
  break;
 case 129:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERACOLOR, ctrl->val);
  meye.colour = ctrl->val << 10;
  break;
 case 132:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERAAGC, ctrl->val);
  meye.params.agc = ctrl->val;
  break;
 case 128:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERASHARPNESS, ctrl->val);
  meye.params.sharpness = ctrl->val;
  break;
 case 130:
  sony_pic_camera_command(
   SONY_PIC_COMMAND_SETCAMERAPICTURE, ctrl->val);
  meye.params.picture = ctrl->val;
  break;
 case 133:
  meye.params.quality = ctrl->val;
  break;
 case 131:
  meye.params.framerate = ctrl->val;
  break;
 default:
  mutex_unlock(&meye.lock);
  return -EINVAL;
 }
 mutex_unlock(&meye.lock);

 return 0;
}
