
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov965x {scalar_t__ streaming; int clk; int * gpios; } ;


 size_t GPIO_PWDN ;
 size_t GPIO_RST ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int __ov965x_set_power(struct ov965x *ov965x, int on)
{
 if (on) {
  int ret = clk_prepare_enable(ov965x->clk);

  if (ret)
   return ret;

  gpiod_set_value_cansleep(ov965x->gpios[GPIO_PWDN], 0);
  gpiod_set_value_cansleep(ov965x->gpios[GPIO_RST], 0);
  msleep(25);
 } else {
  gpiod_set_value_cansleep(ov965x->gpios[GPIO_RST], 1);
  gpiod_set_value_cansleep(ov965x->gpios[GPIO_PWDN], 1);

  clk_disable_unprepare(ov965x->clk);
 }

 ov965x->streaming = 0;

 return 0;
}
