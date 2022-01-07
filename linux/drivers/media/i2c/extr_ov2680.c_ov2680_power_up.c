
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int reset_gpio; } ;


 int gpiod_set_value (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ov2680_power_up(struct ov2680_dev *sensor)
{
 if (!sensor->reset_gpio)
  return;

 gpiod_set_value(sensor->reset_gpio, 0);
 usleep_range(5000, 10000);
}
