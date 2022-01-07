
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sge {int intrtimer_nres; int fixed_intrtimer; TYPE_1__* freelQ; struct adapter* adapter; } ;
struct adapter {scalar_t__ regs; } ;
struct TYPE_2__ {int credits; int size; } ;


 scalar_t__ A_SG_INTRTIMER ;
 scalar_t__ A_SG_INT_ENABLE ;
 int F_FL0_ENABLE ;
 int F_FL1_ENABLE ;
 int F_FL_EXHAUSTED ;
 int doorbell_pio (struct adapter*,int) ;
 int readl (scalar_t__) ;
 int refill_free_list (struct sge*,TYPE_1__*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void freelQs_empty(struct sge *sge)
{
 struct adapter *adapter = sge->adapter;
 u32 irq_reg = readl(adapter->regs + A_SG_INT_ENABLE);
 u32 irqholdoff_reg;

 refill_free_list(sge, &sge->freelQ[0]);
 refill_free_list(sge, &sge->freelQ[1]);

 if (sge->freelQ[0].credits > (sge->freelQ[0].size >> 2) &&
     sge->freelQ[1].credits > (sge->freelQ[1].size >> 2)) {
  irq_reg |= F_FL_EXHAUSTED;
  irqholdoff_reg = sge->fixed_intrtimer;
 } else {

  irq_reg &= ~F_FL_EXHAUSTED;
  irqholdoff_reg = sge->intrtimer_nres;
 }
 writel(irqholdoff_reg, adapter->regs + A_SG_INTRTIMER);
 writel(irq_reg, adapter->regs + A_SG_INT_ENABLE);


 doorbell_pio(adapter, F_FL0_ENABLE | F_FL1_ENABLE);
}
