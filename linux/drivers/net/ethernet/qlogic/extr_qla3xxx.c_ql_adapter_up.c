
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ql3_adapter {TYPE_1__* pdev; int flags; scalar_t__ msi; int hw_lock; int napi; int adapter_timer; struct net_device* ndev; } ;
struct net_device {int name; } ;
struct TYPE_3__ {int irq; } ;


 int ENOMEM ;
 int HZ ;
 unsigned long IRQF_SHARED ;
 int QL_ADAPTER_UP ;
 int QL_DRVR_SEM_MASK ;
 int QL_MSI_ENABLED ;
 int clear_bit (int ,int *) ;
 int free_irq (int ,struct net_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*) ;
 int pci_disable_msi (TYPE_1__*) ;
 scalar_t__ pci_enable_msi (TYPE_1__*) ;
 int ql3xxx_isr ;
 int ql_adapter_initialize (struct ql3_adapter*) ;
 scalar_t__ ql_alloc_mem_resources (struct ql3_adapter*) ;
 int ql_enable_interrupts (struct ql3_adapter*) ;
 int ql_sem_unlock (struct ql3_adapter*,int ) ;
 int ql_wait_for_drvr_lock (struct ql3_adapter*) ;
 int request_irq (int ,int ,unsigned long,int ,struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ql_adapter_up(struct ql3_adapter *qdev)
{
 struct net_device *ndev = qdev->ndev;
 int err;
 unsigned long irq_flags = IRQF_SHARED;
 unsigned long hw_flags;

 if (ql_alloc_mem_resources(qdev)) {
  netdev_err(ndev, "Unable to  allocate buffers\n");
  return -ENOMEM;
 }

 if (qdev->msi) {
  if (pci_enable_msi(qdev->pdev)) {
   netdev_err(ndev,
       "User requested MSI, but MSI failed to initialize.  Continuing without MSI.\n");
   qdev->msi = 0;
  } else {
   netdev_info(ndev, "MSI Enabled...\n");
   set_bit(QL_MSI_ENABLED, &qdev->flags);
   irq_flags &= ~IRQF_SHARED;
  }
 }

 err = request_irq(qdev->pdev->irq, ql3xxx_isr,
     irq_flags, ndev->name, ndev);
 if (err) {
  netdev_err(ndev,
      "Failed to reserve interrupt %d - already in use\n",
      qdev->pdev->irq);
  goto err_irq;
 }

 spin_lock_irqsave(&qdev->hw_lock, hw_flags);

 err = ql_wait_for_drvr_lock(qdev);
 if (err) {
  err = ql_adapter_initialize(qdev);
  if (err) {
   netdev_err(ndev, "Unable to initialize adapter\n");
   goto err_init;
  }
  netdev_err(ndev, "Releasing driver lock\n");
  ql_sem_unlock(qdev, QL_DRVR_SEM_MASK);
 } else {
  netdev_err(ndev, "Could not acquire driver lock\n");
  goto err_lock;
 }

 spin_unlock_irqrestore(&qdev->hw_lock, hw_flags);

 set_bit(QL_ADAPTER_UP, &qdev->flags);

 mod_timer(&qdev->adapter_timer, jiffies + HZ * 1);

 napi_enable(&qdev->napi);
 ql_enable_interrupts(qdev);
 return 0;

err_init:
 ql_sem_unlock(qdev, QL_DRVR_SEM_MASK);
err_lock:
 spin_unlock_irqrestore(&qdev->hw_lock, hw_flags);
 free_irq(qdev->pdev->irq, ndev);
err_irq:
 if (qdev->msi && test_bit(QL_MSI_ENABLED, &qdev->flags)) {
  netdev_info(ndev, "calling pci_disable_msi()\n");
  clear_bit(QL_MSI_ENABLED, &qdev->flags);
  pci_disable_msi(qdev->pdev);
 }
 return err;
}
