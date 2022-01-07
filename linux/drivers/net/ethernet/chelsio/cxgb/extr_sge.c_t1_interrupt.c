
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int unhandled_irqs; } ;
struct TYPE_3__ {int cidx; } ;
struct sge {TYPE_2__ stats; TYPE_1__ respQ; } ;
struct adapter {int async_lock; int napi; scalar_t__ regs; struct sge* sge; } ;
typedef int irqreturn_t ;


 scalar_t__ A_PL_CAUSE ;
 scalar_t__ A_SG_SLEEPING ;
 int F_PL_INTR_SGE_DATA ;
 int IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int __napi_schedule (int *) ;
 scalar_t__ likely (int ) ;
 int napi_enable (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 scalar_t__ process_pure_responses (struct adapter*) ;
 int responses_pending (struct adapter*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t1_slow_intr_handler (struct adapter*) ;
 int writel (int ,scalar_t__) ;

irqreturn_t t1_interrupt(int irq, void *data)
{
 struct adapter *adapter = data;
 struct sge *sge = adapter->sge;
 int handled;

 if (likely(responses_pending(adapter))) {
  writel(F_PL_INTR_SGE_DATA, adapter->regs + A_PL_CAUSE);

  if (napi_schedule_prep(&adapter->napi)) {
   if (process_pure_responses(adapter))
    __napi_schedule(&adapter->napi);
   else {

    writel(sge->respQ.cidx, adapter->regs + A_SG_SLEEPING);

    napi_enable(&adapter->napi);
   }
  }
  return IRQ_HANDLED;
 }

 spin_lock(&adapter->async_lock);
 handled = t1_slow_intr_handler(adapter);
 spin_unlock(&adapter->async_lock);

 if (!handled)
  sge->stats.unhandled_irqs++;

 return IRQ_RETVAL(handled != 0);
}
