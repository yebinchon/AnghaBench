
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {scalar_t__ mmio_addr; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int assert (int ) ;
 int free_netdev (struct net_device*) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void __rtl8139_cleanup_dev (struct net_device *dev)
{
 struct rtl8139_private *tp = netdev_priv(dev);
 struct pci_dev *pdev;

 assert (dev != ((void*)0));
 assert (tp->pci_dev != ((void*)0));
 pdev = tp->pci_dev;

 if (tp->mmio_addr)
  pci_iounmap (pdev, tp->mmio_addr);


 pci_release_regions (pdev);

 free_netdev(dev);
}
