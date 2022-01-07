
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {scalar_t__ rx_new; scalar_t__ rx_desc; } ;
struct hpc3_ethregs {int rx_ctrl; int rx_ndptr; } ;


 int HPC3_ERXCTRL_ACTIVE ;
 int VIRT_TO_DMA (struct sgiseeq_private*,scalar_t__) ;
 int seeq_go (struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ;

__attribute__((used)) static inline void rx_maybe_restart(struct sgiseeq_private *sp,
        struct hpc3_ethregs *hregs,
        struct sgiseeq_regs *sregs)
{
 if (!(hregs->rx_ctrl & HPC3_ERXCTRL_ACTIVE)) {
  hregs->rx_ndptr = VIRT_TO_DMA(sp, sp->rx_desc + sp->rx_new);
  seeq_go(sp, hregs, sregs);
 }
}
