
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct igc_q_vector {int napi; } ;
struct TYPE_4__ {int get_link_status; } ;
struct igc_hw {TYPE_2__ mac; } ;
struct TYPE_3__ {int doosync; } ;
struct igc_adapter {int watchdog_timer; int state; TYPE_1__ stats; int reset_task; struct igc_hw hw; struct igc_q_vector** q_vector; } ;
typedef int irqreturn_t ;


 int IGC_ICR ;
 int IGC_ICR_DOUTSYNC ;
 int IGC_ICR_DRSTA ;
 int IGC_ICR_INT_ASSERTED ;
 int IGC_ICR_LSC ;
 int IGC_ICR_RXSEQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __IGC_DOWN ;
 int igc_write_itr (struct igc_q_vector*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_schedule (int *) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t igc_intr(int irq, void *data)
{
 struct igc_adapter *adapter = data;
 struct igc_q_vector *q_vector = adapter->q_vector[0];
 struct igc_hw *hw = &adapter->hw;



 u32 icr = rd32(IGC_ICR);




 if (!(icr & IGC_ICR_INT_ASSERTED))
  return IRQ_NONE;

 igc_write_itr(q_vector);

 if (icr & IGC_ICR_DRSTA)
  schedule_work(&adapter->reset_task);

 if (icr & IGC_ICR_DOUTSYNC) {

  adapter->stats.doosync++;
 }

 if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
  hw->mac.get_link_status = 1;

  if (!test_bit(__IGC_DOWN, &adapter->state))
   mod_timer(&adapter->watchdog_timer, jiffies + 1);
 }

 napi_schedule(&q_vector->napi);

 return IRQ_HANDLED;
}
