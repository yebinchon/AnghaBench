
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int on; scalar_t__ clk; scalar_t__ resetb_gpio; scalar_t__ pwdn_gpio; } ;


 int clk_prepare_enable (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ov7670_power_on(struct v4l2_subdev *sd)
{
 struct ov7670_info *info = to_state(sd);

 if (info->on)
  return;

 clk_prepare_enable(info->clk);

 if (info->pwdn_gpio)
  gpiod_set_value(info->pwdn_gpio, 0);
 if (info->resetb_gpio) {
  gpiod_set_value(info->resetb_gpio, 1);
  usleep_range(500, 1000);
  gpiod_set_value(info->resetb_gpio, 0);
 }
 if (info->pwdn_gpio || info->resetb_gpio || info->clk)
  usleep_range(3000, 5000);

 info->on = 1;
}
