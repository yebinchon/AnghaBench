
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int get_link_status; } ;
struct igc_hw {TYPE_2__ mac; } ;
struct TYPE_3__ {int doosync; } ;
struct igc_adapter {int eims_other; int watchdog_timer; int state; TYPE_1__ stats; int reset_task; struct igc_hw hw; } ;
typedef int irqreturn_t ;


 int IGC_EIMS ;
 int IGC_ICR ;
 int IGC_ICR_DOUTSYNC ;
 int IGC_ICR_DRSTA ;
 int IGC_ICR_LSC ;
 int IRQ_HANDLED ;
 int __IGC_DOWN ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static irqreturn_t igc_msix_other(int irq, void *data)
{
 struct igc_adapter *adapter = data;
 struct igc_hw *hw = &adapter->hw;
 u32 icr = rd32(IGC_ICR);


 if (icr & IGC_ICR_DRSTA)
  schedule_work(&adapter->reset_task);

 if (icr & IGC_ICR_DOUTSYNC) {

  adapter->stats.doosync++;
 }

 if (icr & IGC_ICR_LSC) {
  hw->mac.get_link_status = 1;

  if (!test_bit(__IGC_DOWN, &adapter->state))
   mod_timer(&adapter->watchdog_timer, jiffies + 1);
 }

 wr32(IGC_EIMS, adapter->eims_other);

 return IRQ_HANDLED;
}
