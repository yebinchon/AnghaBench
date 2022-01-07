
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int dummy; } ;


 int NO_DELAY ;
 int RDC_8820_INT ;
 int dprintk (int,char*) ;
 scalar_t__ dst_gpio_outb (struct dst_state*,int ,int ,int ,int ) ;
 int msleep (int) ;
 int pr_err (char*) ;

int rdc_reset_state(struct dst_state *state)
{
 dprintk(2, "Resetting state machine\n");
 if (dst_gpio_outb(state, RDC_8820_INT, RDC_8820_INT, 0, NO_DELAY) < 0) {
  pr_err("dst_gpio_outb ERROR !\n");
  return -1;
 }
 msleep(10);
 if (dst_gpio_outb(state, RDC_8820_INT, RDC_8820_INT, RDC_8820_INT, NO_DELAY) < 0) {
  pr_err("dst_gpio_outb ERROR !\n");
  msleep(10);
  return -1;
 }

 return 0;
}
