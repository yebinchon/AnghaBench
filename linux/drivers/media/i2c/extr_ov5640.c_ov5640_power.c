
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int pwdn_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void ov5640_power(struct ov5640_dev *sensor, bool enable)
{
 gpiod_set_value_cansleep(sensor->pwdn_gpio, enable ? 0 : 1);
}
