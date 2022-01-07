
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_flash {struct v4l2_ctrl** ctrls; struct led_classdev_flash* fled_cdev; } ;
struct v4l2_ctrl {int id; int const val; } ;
struct led_classdev {int dummy; } ;
struct led_classdev_flash {struct led_classdev led_cdev; } ;


 int EBUSY ;
 int EINVAL ;
 size_t LED_MODE ;
 int LED_OFF ;
 size_t STROBE_SOURCE ;
 size_t TORCH_INTENSITY ;
 int const V4L2_FLASH_STROBE_SOURCE_EXTERNAL ;
 int __software_strobe_mode_inactive (struct v4l2_ctrl**) ;
 int call_flash_op (struct v4l2_flash*,int ,int) ;
 int external_strobe_set ;
 int led_set_brightness_sync (struct led_classdev*,int ) ;
 int led_set_flash_brightness (struct led_classdev_flash*,int const) ;
 int led_set_flash_strobe (struct led_classdev_flash*,int) ;
 int led_set_flash_timeout (struct led_classdev_flash*,int const) ;
 struct v4l2_flash* v4l2_ctrl_to_v4l2_flash (struct v4l2_ctrl*) ;
 int v4l2_flash_set_led_brightness (struct v4l2_flash*,struct v4l2_ctrl*) ;

__attribute__((used)) static int v4l2_flash_s_ctrl(struct v4l2_ctrl *c)
{
 struct v4l2_flash *v4l2_flash = v4l2_ctrl_to_v4l2_flash(c);
 struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
 struct led_classdev *led_cdev = fled_cdev ? &fled_cdev->led_cdev : ((void*)0);
 struct v4l2_ctrl **ctrls = v4l2_flash->ctrls;
 bool external_strobe;
 int ret = 0;

 switch (c->id) {
 case 136:
  switch (c->val) {
  case 129:
   led_set_brightness_sync(led_cdev, LED_OFF);
   return led_set_flash_strobe(fled_cdev, 0);
  case 130:

   led_set_brightness_sync(led_cdev, LED_OFF);
   if (ctrls[STROBE_SOURCE]) {
    external_strobe = (ctrls[STROBE_SOURCE]->val ==
     V4L2_FLASH_STROBE_SOURCE_EXTERNAL);

    ret = call_flash_op(v4l2_flash,
      external_strobe_set,
      external_strobe);
   }
   return ret;
  case 128:
   if (ctrls[STROBE_SOURCE]) {
    ret = call_flash_op(v4l2_flash,
      external_strobe_set,
      0);
    if (ret < 0)
     return ret;
   }

   ret = led_set_flash_strobe(fled_cdev, 0);
   if (ret < 0)
    return ret;

   v4l2_flash_set_led_brightness(v4l2_flash,
       ctrls[TORCH_INTENSITY]);
   return 0;
  }
  break;
 case 134:
  external_strobe = (c->val == V4L2_FLASH_STROBE_SOURCE_EXTERNAL);






  if (ctrls[LED_MODE]->val != 130)
   return 0;

  return call_flash_op(v4l2_flash, external_strobe_set,
     external_strobe);
 case 135:
  if (__software_strobe_mode_inactive(ctrls))
   return -EBUSY;
  return led_set_flash_strobe(fled_cdev, 1);
 case 133:
  if (__software_strobe_mode_inactive(ctrls))
   return -EBUSY;
  return led_set_flash_strobe(fled_cdev, 0);
 case 132:




  return led_set_flash_timeout(fled_cdev, c->val);
 case 137:




  return led_set_flash_brightness(fled_cdev, c->val);
 case 131:
 case 138:
  v4l2_flash_set_led_brightness(v4l2_flash, c);
  return 0;
 }

 return -EINVAL;
}
