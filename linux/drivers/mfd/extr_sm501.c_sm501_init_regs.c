
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int set; } ;
struct sm501_initdata {scalar_t__ mclk; scalar_t__ m1xclk; int gpio_high; int gpio_low; int misc_timing; TYPE_1__ misc_control; } ;
struct sm501_devdata {int dev; } ;


 int SM501_CLOCK_M1XCLK ;
 int SM501_CLOCK_MCLK ;
 int SM501_GPIO31_0_CONTROL ;
 int SM501_GPIO63_32_CONTROL ;
 int SM501_MISC_TIMING ;
 int dev_info (int ,char*,scalar_t__) ;
 int sm501_init_reg (struct sm501_devdata*,int ,int *) ;
 int sm501_misc_control (int ,int ,int ) ;
 int sm501_set_clock (int ,int ,scalar_t__) ;

__attribute__((used)) static void sm501_init_regs(struct sm501_devdata *sm,
       struct sm501_initdata *init)
{
 sm501_misc_control(sm->dev,
      init->misc_control.set,
      init->misc_control.mask);

 sm501_init_reg(sm, SM501_MISC_TIMING, &init->misc_timing);
 sm501_init_reg(sm, SM501_GPIO31_0_CONTROL, &init->gpio_low);
 sm501_init_reg(sm, SM501_GPIO63_32_CONTROL, &init->gpio_high);

 if (init->m1xclk) {
  dev_info(sm->dev, "setting M1XCLK to %ld\n", init->m1xclk);
  sm501_set_clock(sm->dev, SM501_CLOCK_M1XCLK, init->m1xclk);
 }

 if (init->mclk) {
  dev_info(sm->dev, "setting MCLK to %ld\n", init->mclk);
  sm501_set_clock(sm->dev, SM501_CLOCK_MCLK, init->mclk);
 }

}
