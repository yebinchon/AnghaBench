
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct igb_q_vector {int napi; } ;
struct TYPE_3__ {int doosync; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int watchdog_timer; int state; TYPE_1__ stats; int reset_task; struct e1000_hw hw; struct igb_q_vector** q_vector; } ;
typedef int irqreturn_t ;


 int E1000_ICR ;
 int E1000_ICR_DOUTSYNC ;
 int E1000_ICR_DRSTA ;
 int E1000_ICR_LSC ;
 int E1000_ICR_RXSEQ ;
 int E1000_ICR_TS ;
 int IRQ_HANDLED ;
 int __IGB_DOWN ;
 int igb_tsync_interrupt (struct igb_adapter*) ;
 int igb_write_itr (struct igb_q_vector*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_schedule (int *) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t igb_intr_msi(int irq, void *data)
{
 struct igb_adapter *adapter = data;
 struct igb_q_vector *q_vector = adapter->q_vector[0];
 struct e1000_hw *hw = &adapter->hw;

 u32 icr = rd32(E1000_ICR);

 igb_write_itr(q_vector);

 if (icr & E1000_ICR_DRSTA)
  schedule_work(&adapter->reset_task);

 if (icr & E1000_ICR_DOUTSYNC) {

  adapter->stats.doosync++;
 }

 if (icr & (E1000_ICR_RXSEQ | E1000_ICR_LSC)) {
  hw->mac.get_link_status = 1;
  if (!test_bit(__IGB_DOWN, &adapter->state))
   mod_timer(&adapter->watchdog_timer, jiffies + 1);
 }

 if (icr & E1000_ICR_TS)
  igb_tsync_interrupt(adapter);

 napi_schedule(&q_vector->napi);

 return IRQ_HANDLED;
}
