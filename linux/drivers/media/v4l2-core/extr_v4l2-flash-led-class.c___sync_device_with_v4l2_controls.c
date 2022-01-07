
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_flash {struct v4l2_ctrl** ctrls; struct led_classdev_flash* fled_cdev; } ;
struct v4l2_ctrl {scalar_t__ val; } ;
struct led_classdev_flash {int dummy; } ;


 size_t FLASH_INTENSITY ;
 size_t FLASH_TIMEOUT ;
 size_t INDICATOR_INTENSITY ;
 size_t LED_MODE ;
 size_t STROBE_SOURCE ;
 size_t TORCH_INTENSITY ;
 scalar_t__ V4L2_FLASH_LED_MODE_TORCH ;
 int call_flash_op (struct v4l2_flash*,int ,scalar_t__) ;
 int external_strobe_set ;
 int led_set_flash_brightness (struct led_classdev_flash*,scalar_t__) ;
 int led_set_flash_timeout (struct led_classdev_flash*,scalar_t__) ;
 int v4l2_flash_set_led_brightness (struct v4l2_flash*,struct v4l2_ctrl*) ;

__attribute__((used)) static int __sync_device_with_v4l2_controls(struct v4l2_flash *v4l2_flash)
{
 struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
 struct v4l2_ctrl **ctrls = v4l2_flash->ctrls;
 int ret = 0;

 if (ctrls[TORCH_INTENSITY])
  v4l2_flash_set_led_brightness(v4l2_flash,
           ctrls[TORCH_INTENSITY]);

 if (ctrls[INDICATOR_INTENSITY])
  v4l2_flash_set_led_brightness(v4l2_flash,
      ctrls[INDICATOR_INTENSITY]);

 if (ctrls[FLASH_TIMEOUT]) {
  ret = led_set_flash_timeout(fled_cdev,
     ctrls[FLASH_TIMEOUT]->val);
  if (ret < 0)
   return ret;
 }

 if (ctrls[FLASH_INTENSITY]) {
  ret = led_set_flash_brightness(fled_cdev,
     ctrls[FLASH_INTENSITY]->val);
  if (ret < 0)
   return ret;
 }







 if (ctrls[STROBE_SOURCE] &&
     ctrls[LED_MODE]->val != V4L2_FLASH_LED_MODE_TORCH)
  ret = call_flash_op(v4l2_flash, external_strobe_set,
     ctrls[STROBE_SOURCE]->val);

 return ret;
}
