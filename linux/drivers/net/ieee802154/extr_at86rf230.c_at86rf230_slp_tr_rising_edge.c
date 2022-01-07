
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_local {int slp_tr; } ;


 int gpio_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static inline void
at86rf230_slp_tr_rising_edge(struct at86rf230_local *lp)
{
 gpio_set_value(lp->slp_tr, 1);
 udelay(1);
 gpio_set_value(lp->slp_tr, 0);
}
