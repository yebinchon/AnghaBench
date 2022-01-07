
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_3__ {int irq; } ;
struct TYPE_4__ {TYPE_1__ hw_res; } ;
struct fjes_adapter {int interrupt_watch_enable; int irq_registered; TYPE_2__ hw; int interrupt_watch_task; int control_wq; struct net_device* netdev; } ;


 int FJES_IRQ_WATCH_DELAY ;
 int IRQF_SHARED ;
 int delayed_work_pending (int *) ;
 int fjes_intr ;
 int queue_delayed_work (int ,int *,int ) ;
 int request_irq (int ,int ,int ,int ,struct fjes_adapter*) ;

__attribute__((used)) static int fjes_request_irq(struct fjes_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int result = -1;

 adapter->interrupt_watch_enable = 1;
 if (!delayed_work_pending(&adapter->interrupt_watch_task)) {
  queue_delayed_work(adapter->control_wq,
       &adapter->interrupt_watch_task,
       FJES_IRQ_WATCH_DELAY);
 }

 if (!adapter->irq_registered) {
  result = request_irq(adapter->hw.hw_res.irq, fjes_intr,
         IRQF_SHARED, netdev->name, adapter);
  if (result)
   adapter->irq_registered = 0;
  else
   adapter->irq_registered = 1;
 }

 return result;
}
