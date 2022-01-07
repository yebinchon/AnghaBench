
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov7740 {scalar_t__ pwdn_gpio; int xvclk; scalar_t__ resetb_gpio; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int gpiod_direction_output (scalar_t__,int ) ;
 int gpiod_set_value (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov7740_set_power(struct ov7740 *ov7740, int on)
{
 int ret;

 if (on) {
  ret = clk_prepare_enable(ov7740->xvclk);
  if (ret)
   return ret;

  if (ov7740->pwdn_gpio)
   gpiod_direction_output(ov7740->pwdn_gpio, 0);

  if (ov7740->resetb_gpio) {
   gpiod_set_value(ov7740->resetb_gpio, 1);
   usleep_range(500, 1000);
   gpiod_set_value(ov7740->resetb_gpio, 0);
   usleep_range(3000, 5000);
  }
 } else {
  clk_disable_unprepare(ov7740->xvclk);

  if (ov7740->pwdn_gpio)
   gpiod_direction_output(ov7740->pwdn_gpio, 0);
 }

 return 0;
}
