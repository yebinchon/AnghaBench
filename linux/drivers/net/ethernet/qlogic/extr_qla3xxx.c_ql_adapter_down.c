
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql3_adapter {int hw_lock; int index; int napi; int adapter_timer; TYPE_1__* pdev; int flags; struct net_device* ndev; scalar_t__ msi; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int QL_ADAPTER_UP ;
 int QL_LINK_MASTER ;
 int QL_MSI_ENABLED ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_disable_msi (TYPE_1__*) ;
 int ql_adapter_reset (struct ql3_adapter*) ;
 int ql_disable_interrupts (struct ql3_adapter*) ;
 int ql_free_mem_resources (struct ql3_adapter*) ;
 scalar_t__ ql_wait_for_drvr_lock (struct ql3_adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ql_adapter_down(struct ql3_adapter *qdev, int do_reset)
{
 struct net_device *ndev = qdev->ndev;
 int retval = 0;

 netif_stop_queue(ndev);
 netif_carrier_off(ndev);

 clear_bit(QL_ADAPTER_UP, &qdev->flags);
 clear_bit(QL_LINK_MASTER, &qdev->flags);

 ql_disable_interrupts(qdev);

 free_irq(qdev->pdev->irq, ndev);

 if (qdev->msi && test_bit(QL_MSI_ENABLED, &qdev->flags)) {
  netdev_info(qdev->ndev, "calling pci_disable_msi()\n");
  clear_bit(QL_MSI_ENABLED, &qdev->flags);
  pci_disable_msi(qdev->pdev);
 }

 del_timer_sync(&qdev->adapter_timer);

 napi_disable(&qdev->napi);

 if (do_reset) {
  int soft_reset;
  unsigned long hw_flags;

  spin_lock_irqsave(&qdev->hw_lock, hw_flags);
  if (ql_wait_for_drvr_lock(qdev)) {
   soft_reset = ql_adapter_reset(qdev);
   if (soft_reset) {
    netdev_err(ndev, "ql_adapter_reset(%d) FAILED!\n",
        qdev->index);
   }
   netdev_err(ndev,
       "Releasing driver lock via chip reset\n");
  } else {
   netdev_err(ndev,
       "Could not acquire driver lock to do reset!\n");
   retval = -1;
  }
  spin_unlock_irqrestore(&qdev->hw_lock, hw_flags);
 }
 ql_free_mem_resources(qdev);
 return retval;
}
