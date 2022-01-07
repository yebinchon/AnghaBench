
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_PL_CAUSE ;
 scalar_t__ A_SG_INT_CAUSE ;
 int SGE_PL_INTR_MASK ;
 int writel (int,scalar_t__) ;

void t1_sge_intr_clear(struct sge *sge)
{
 writel(SGE_PL_INTR_MASK, sge->adapter->regs + A_PL_CAUSE);
 writel(0xffffffff, sge->adapter->regs + A_SG_INT_CAUSE);
}
