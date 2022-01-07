
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_camera {void* reset_gpio; void* power_gpio; TYPE_1__* platdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int gpio_direction_output (void*,int ) ;
 int gpio_free (void*) ;
 int gpio_is_valid (void*) ;
 int gpio_request (void*,char*) ;
 void* viafb_gpio_lookup (char*) ;

__attribute__((used)) static int via_sensor_power_setup(struct via_camera *cam)
{
 int ret;

 cam->power_gpio = viafb_gpio_lookup("VGPIO3");
 cam->reset_gpio = viafb_gpio_lookup("VGPIO2");
 if (!gpio_is_valid(cam->power_gpio) || !gpio_is_valid(cam->reset_gpio)) {
  dev_err(&cam->platdev->dev, "Unable to find GPIO lines\n");
  return -EINVAL;
 }
 ret = gpio_request(cam->power_gpio, "viafb-camera");
 if (ret) {
  dev_err(&cam->platdev->dev, "Unable to request power GPIO\n");
  return ret;
 }
 ret = gpio_request(cam->reset_gpio, "viafb-camera");
 if (ret) {
  dev_err(&cam->platdev->dev, "Unable to request reset GPIO\n");
  gpio_free(cam->power_gpio);
  return ret;
 }
 gpio_direction_output(cam->power_gpio, 0);
 gpio_direction_output(cam->reset_gpio, 0);
 return 0;
}
