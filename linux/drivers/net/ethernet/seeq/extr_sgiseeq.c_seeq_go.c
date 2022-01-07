
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_regs {int rstat; } ;
struct sgiseeq_private {int mode; } ;
struct hpc3_ethregs {int rx_ctrl; } ;


 int HPC3_ERXCTRL_ACTIVE ;
 int RSTAT_GO_BITS ;

__attribute__((used)) static inline void seeq_go(struct sgiseeq_private *sp,
      struct hpc3_ethregs *hregs,
      struct sgiseeq_regs *sregs)
{
 sregs->rstat = sp->mode | RSTAT_GO_BITS;
 hregs->rx_ctrl = HPC3_ERXCTRL_ACTIVE;
}
