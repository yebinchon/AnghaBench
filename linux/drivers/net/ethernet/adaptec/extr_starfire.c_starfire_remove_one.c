
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct netdev_private {int base; int queue_mem_dma; scalar_t__ queue_mem; int queue_mem_size; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int) ;
 int PCI_D3hot ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int ,scalar_t__,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void starfire_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct netdev_private *np = netdev_priv(dev);

 BUG_ON(!dev);

 unregister_netdev(dev);

 if (np->queue_mem)
  pci_free_consistent(pdev, np->queue_mem_size, np->queue_mem, np->queue_mem_dma);



 pci_set_power_state(pdev, PCI_D3hot);
 pci_disable_device(pdev);

 iounmap(np->base);
 pci_release_regions(pdev);

 free_netdev(dev);
}
