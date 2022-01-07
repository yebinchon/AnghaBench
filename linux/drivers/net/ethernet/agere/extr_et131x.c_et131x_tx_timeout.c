
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tx_ring {struct tcb* send_head; } ;
struct tcb {scalar_t__ count; int index; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {int flags; TYPE_3__* netdev; TYPE_1__* pdev; int tcb_send_qlock; struct tx_ring tx_ring; } ;
struct TYPE_5__ {int tx_errors; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int dev; } ;


 int FMP_ADAPTER_HARDWARE_ERROR ;
 int FMP_ADAPTER_INTERRUPT_IN_USE ;
 int FMP_ADAPTER_NON_RECOVER_ERROR ;
 scalar_t__ NIC_SEND_HANG_THRESHOLD ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int et131x_disable_txrx (struct net_device*) ;
 int et131x_enable_txrx (struct net_device*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void et131x_tx_timeout(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 struct tx_ring *tx_ring = &adapter->tx_ring;
 struct tcb *tcb;
 unsigned long flags;


 if (!(adapter->flags & FMP_ADAPTER_INTERRUPT_IN_USE))
  return;




 if (adapter->flags & FMP_ADAPTER_NON_RECOVER_ERROR)
  return;


 if (adapter->flags & FMP_ADAPTER_HARDWARE_ERROR) {
  dev_err(&adapter->pdev->dev, "hardware error - reset\n");
  return;
 }


 spin_lock_irqsave(&adapter->tcb_send_qlock, flags);
 tcb = tx_ring->send_head;
 spin_unlock_irqrestore(&adapter->tcb_send_qlock, flags);

 if (tcb) {
  tcb->count++;

  if (tcb->count > NIC_SEND_HANG_THRESHOLD) {
   dev_warn(&adapter->pdev->dev,
     "Send stuck - reset. tcb->WrIndex %x\n",
     tcb->index);

   adapter->netdev->stats.tx_errors++;


   et131x_disable_txrx(netdev);
   et131x_enable_txrx(netdev);
  }
 }
}
