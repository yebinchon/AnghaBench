
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int ov5640_power (struct ov5640_dev*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ov5640_reset(struct ov5640_dev *sensor)
{
 if (!sensor->reset_gpio)
  return;

 gpiod_set_value_cansleep(sensor->reset_gpio, 0);


 ov5640_power(sensor, 0);
 usleep_range(5000, 10000);
 ov5640_power(sensor, 1);
 usleep_range(5000, 10000);

 gpiod_set_value_cansleep(sensor->reset_gpio, 1);
 usleep_range(1000, 2000);

 gpiod_set_value_cansleep(sensor->reset_gpio, 0);
 usleep_range(20000, 25000);
}
