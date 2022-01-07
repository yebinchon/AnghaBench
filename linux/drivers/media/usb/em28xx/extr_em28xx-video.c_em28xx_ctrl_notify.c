
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct em28xx {int volume; int mute; } ;




 int em28xx_audio_analog_set (struct em28xx*) ;

__attribute__((used)) static void em28xx_ctrl_notify(struct v4l2_ctrl *ctrl, void *priv)
{
 struct em28xx *dev = priv;







 switch (ctrl->id) {
 case 129:
  dev->mute = ctrl->val;
  em28xx_audio_analog_set(dev);
  break;
 case 128:
  dev->volume = ctrl->val;
  em28xx_audio_analog_set(dev);
  break;
 }
}
