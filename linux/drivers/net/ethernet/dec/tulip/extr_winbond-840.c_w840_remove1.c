
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct netdev_private {int base_addr; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void w840_remove1(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (dev) {
  struct netdev_private *np = netdev_priv(dev);
  unregister_netdev(dev);
  pci_release_regions(pdev);
  pci_iounmap(pdev, np->base_addr);
  free_netdev(dev);
 }
}
