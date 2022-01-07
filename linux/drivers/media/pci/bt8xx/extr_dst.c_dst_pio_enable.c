
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int NO_DELAY ;
 int RDC_8820_PIO_0_ENABLE ;
 scalar_t__ dst_gpio_outb (struct dst_state*,int ,int ,int ,int ) ;
 int pr_err (char*) ;
 int udelay (int) ;

__attribute__((used)) static int dst_pio_enable(struct dst_state *state)
{
 if (dst_gpio_outb(state, ~0, RDC_8820_PIO_0_ENABLE, 0, NO_DELAY) < 0) {
  pr_err("dst_gpio_outb ERROR !\n");
  return -1;
 }
 udelay(1000);

 return 0;
}
