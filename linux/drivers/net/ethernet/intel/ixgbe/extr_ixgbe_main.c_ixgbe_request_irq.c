
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct ixgbe_adapter {int flags; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_FLAG_MSI_ENABLED ;
 int e_err (int ,char*,int) ;
 int ixgbe_intr ;
 int ixgbe_request_msix_irqs (struct ixgbe_adapter*) ;
 int probe ;
 int request_irq (int ,int ,int ,int ,struct ixgbe_adapter*) ;

__attribute__((used)) static int ixgbe_request_irq(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;

 if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED)
  err = ixgbe_request_msix_irqs(adapter);
 else if (adapter->flags & IXGBE_FLAG_MSI_ENABLED)
  err = request_irq(adapter->pdev->irq, ixgbe_intr, 0,
      netdev->name, adapter);
 else
  err = request_irq(adapter->pdev->irq, ixgbe_intr, IRQF_SHARED,
      netdev->name, adapter);

 if (err)
  e_err(probe, "request_irq failed, Error %d\n", err);

 return err;
}
