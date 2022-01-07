
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int reset_gpio; int power_gpio; } ;


 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void via_sensor_power_down(struct via_camera *cam)
{
 gpio_set_value(cam->power_gpio, 0);
 gpio_set_value(cam->reset_gpio, 0);
}
