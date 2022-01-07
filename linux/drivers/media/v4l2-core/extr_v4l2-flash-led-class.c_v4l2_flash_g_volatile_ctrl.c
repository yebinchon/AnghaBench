
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_flash {struct led_classdev_flash* fled_cdev; } ;
struct v4l2_ctrl {int id; int val; } ;
struct TYPE_2__ {int val; } ;
struct led_classdev_flash {TYPE_1__ brightness; } ;


 int EINVAL ;





 int led_get_flash_fault (struct led_classdev_flash*,int*) ;
 int led_get_flash_strobe (struct led_classdev_flash*,int*) ;
 int led_update_flash_brightness (struct led_classdev_flash*) ;
 struct v4l2_flash* v4l2_ctrl_to_v4l2_flash (struct v4l2_ctrl*) ;
 int v4l2_flash_update_led_brightness (struct v4l2_flash*,struct v4l2_ctrl*) ;

__attribute__((used)) static int v4l2_flash_g_volatile_ctrl(struct v4l2_ctrl *c)
{
 struct v4l2_flash *v4l2_flash = v4l2_ctrl_to_v4l2_flash(c);
 struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
 bool is_strobing;
 int ret;

 switch (c->id) {
 case 128:
 case 131:
  return v4l2_flash_update_led_brightness(v4l2_flash, c);
 case 130:
  ret = led_update_flash_brightness(fled_cdev);
  if (ret < 0)
   return ret;




  c->val = fled_cdev->brightness.val;
  return 0;
 case 129:
  ret = led_get_flash_strobe(fled_cdev, &is_strobing);
  if (ret < 0)
   return ret;
  c->val = is_strobing;
  return 0;
 case 132:

  return led_get_flash_fault(fled_cdev, &c->val);
 default:
  return -EINVAL;
 }
}
