
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int DELAY ;
 int NO_DELAY ;
 int RDC_8820_RESET ;
 int dprintk (int,char*) ;
 scalar_t__ dst_gpio_outb (struct dst_state*,int ,int ,int ,int ) ;
 int pr_err (char*) ;
 int udelay (int) ;

__attribute__((used)) static int rdc_8820_reset(struct dst_state *state)
{
 dprintk(3, "Resetting DST\n");
 if (dst_gpio_outb(state, RDC_8820_RESET, RDC_8820_RESET, 0, NO_DELAY) < 0) {
  pr_err("dst_gpio_outb ERROR !\n");
  return -1;
 }
 udelay(1000);
 if (dst_gpio_outb(state, RDC_8820_RESET, RDC_8820_RESET, RDC_8820_RESET, DELAY) < 0) {
  pr_err("dst_gpio_outb ERROR !\n");
  return -1;
 }

 return 0;
}
