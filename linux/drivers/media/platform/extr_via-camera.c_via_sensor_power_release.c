
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int reset_gpio; int power_gpio; } ;


 int gpio_free (int ) ;
 int via_sensor_power_down (struct via_camera*) ;

__attribute__((used)) static void via_sensor_power_release(struct via_camera *cam)
{
 via_sensor_power_down(cam);
 gpio_free(cam->power_gpio);
 gpio_free(cam->reset_gpio);
}
