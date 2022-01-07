
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int type_flags; } ;


 int DST_TYPE_HAS_FW_1 ;
 int NO_DELAY ;
 int RDC_8820_PIO_0_DISABLE ;
 scalar_t__ dst_gpio_outb (struct dst_state*,int ,int ,int ,int ) ;
 int pr_err (char*) ;
 int udelay (int) ;

int dst_pio_disable(struct dst_state *state)
{
 if (dst_gpio_outb(state, ~0, RDC_8820_PIO_0_DISABLE, RDC_8820_PIO_0_DISABLE, NO_DELAY) < 0) {
  pr_err("dst_gpio_outb ERROR !\n");
  return -1;
 }
 if (state->type_flags & DST_TYPE_HAS_FW_1)
  udelay(1000);

 return 0;
}
