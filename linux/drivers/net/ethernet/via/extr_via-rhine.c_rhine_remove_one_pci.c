
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int base; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void rhine_remove_one_pci(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct rhine_private *rp = netdev_priv(dev);

 unregister_netdev(dev);

 pci_iounmap(pdev, rp->base);
 pci_release_regions(pdev);

 free_netdev(dev);
 pci_disable_device(pdev);
}
