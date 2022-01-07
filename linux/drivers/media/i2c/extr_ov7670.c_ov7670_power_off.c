
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int on; scalar_t__ pwdn_gpio; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (scalar_t__,int) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void ov7670_power_off(struct v4l2_subdev *sd)
{
 struct ov7670_info *info = to_state(sd);

 if (!info->on)
  return;

 clk_disable_unprepare(info->clk);

 if (info->pwdn_gpio)
  gpiod_set_value(info->pwdn_gpio, 1);

 info->on = 0;
}
