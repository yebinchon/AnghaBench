
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct fjes_hw {TYPE_1__ hw_res; } ;
struct fjes_adapter {int interrupt_watch_enable; int irq_registered; struct fjes_hw hw; int interrupt_watch_task; } ;


 int REG_ICTL_MASK_ALL ;
 int cancel_delayed_work_sync (int *) ;
 int fjes_hw_set_irqmask (struct fjes_hw*,int ,int) ;
 int free_irq (int ,struct fjes_adapter*) ;

__attribute__((used)) static void fjes_free_irq(struct fjes_adapter *adapter)
{
 struct fjes_hw *hw = &adapter->hw;

 adapter->interrupt_watch_enable = 0;
 cancel_delayed_work_sync(&adapter->interrupt_watch_task);

 fjes_hw_set_irqmask(hw, REG_ICTL_MASK_ALL, 1);

 if (adapter->irq_registered) {
  free_irq(adapter->hw.hw_res.irq, adapter);
  adapter->irq_registered = 0;
 }
}
