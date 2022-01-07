
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int pdev; int irq; struct net_device* netdev; } ;
struct net_device {int name; } ;


 int IRQF_SHARED ;
 int PCI_IRQ_ALL_TYPES ;
 int netdev_dbg (struct net_device*,char*,int ,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 int pch_gbe_intr ;
 int pci_alloc_irq_vectors (int ,int,int,int ) ;
 int pci_dev_msi_enabled (int ) ;
 int pci_irq_vector (int ,int ) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;

__attribute__((used)) static int pch_gbe_request_irq(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;

 err = pci_alloc_irq_vectors(adapter->pdev, 1, 1, PCI_IRQ_ALL_TYPES);
 if (err < 0)
  return err;

 adapter->irq = pci_irq_vector(adapter->pdev, 0);

 err = request_irq(adapter->irq, &pch_gbe_intr, IRQF_SHARED,
     netdev->name, netdev);
 if (err)
  netdev_err(netdev, "Unable to allocate interrupt Error: %d\n",
      err);
 netdev_dbg(netdev, "have_msi : %d  return : 0x%04x\n",
     pci_dev_msi_enabled(adapter->pdev), err);
 return err;
}
