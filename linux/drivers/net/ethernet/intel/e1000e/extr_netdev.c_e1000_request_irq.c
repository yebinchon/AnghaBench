
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct e1000_adapter {int flags; TYPE_1__* pdev; int int_mode; scalar_t__ msix_entries; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int E1000E_INT_MODE_LEGACY ;
 int E1000E_INT_MODE_MSI ;
 int FLAG_MSI_ENABLED ;
 int IRQF_SHARED ;
 int e1000_intr ;
 int e1000_intr_msi ;
 int e1000_request_msix (struct e1000_adapter*) ;
 int e1000e_reset_interrupt_capability (struct e1000_adapter*) ;
 int e1000e_set_interrupt_capability (struct e1000_adapter*) ;
 int e_err (char*,int) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int e1000_request_irq(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;

 if (adapter->msix_entries) {
  err = e1000_request_msix(adapter);
  if (!err)
   return err;

  e1000e_reset_interrupt_capability(adapter);
  adapter->int_mode = E1000E_INT_MODE_MSI;
  e1000e_set_interrupt_capability(adapter);
 }
 if (adapter->flags & FLAG_MSI_ENABLED) {
  err = request_irq(adapter->pdev->irq, e1000_intr_msi, 0,
      netdev->name, netdev);
  if (!err)
   return err;


  e1000e_reset_interrupt_capability(adapter);
  adapter->int_mode = E1000E_INT_MODE_LEGACY;
 }

 err = request_irq(adapter->pdev->irq, e1000_intr, IRQF_SHARED,
     netdev->name, netdev);
 if (err)
  e_err("Unable to allocate interrupt, Error: %d\n", err);

 return err;
}
