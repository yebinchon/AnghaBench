
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int irq; } ;
struct net_device {int name; } ;
struct atl1c_adapter {int have_msi; struct pci_dev* pdev; struct net_device* netdev; } ;


 int IRQF_SHARED ;
 int atl1c_intr ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ netif_msg_ifup (struct atl1c_adapter*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int request_irq (int ,int ,int,int ,struct net_device*) ;

__attribute__((used)) static int atl1c_request_irq(struct atl1c_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct net_device *netdev = adapter->netdev;
 int flags = 0;
 int err = 0;

 adapter->have_msi = 1;
 err = pci_enable_msi(adapter->pdev);
 if (err) {
  if (netif_msg_ifup(adapter))
   dev_err(&pdev->dev,
    "Unable to allocate MSI interrupt Error: %d\n",
    err);
  adapter->have_msi = 0;
 }

 if (!adapter->have_msi)
  flags |= IRQF_SHARED;
 err = request_irq(adapter->pdev->irq, atl1c_intr, flags,
   netdev->name, netdev);
 if (err) {
  if (netif_msg_ifup(adapter))
   dev_err(&pdev->dev,
    "Unable to allocate interrupt Error: %d\n",
    err);
  if (adapter->have_msi)
   pci_disable_msi(adapter->pdev);
  return err;
 }
 if (netif_msg_ifup(adapter))
  dev_dbg(&pdev->dev, "atl1c_request_irq OK\n");
 return err;
}
