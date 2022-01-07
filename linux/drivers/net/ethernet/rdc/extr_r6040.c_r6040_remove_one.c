
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_private {int base; int napi; int mii_bus; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void r6040_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct r6040_private *lp = netdev_priv(dev);

 unregister_netdev(dev);
 mdiobus_unregister(lp->mii_bus);
 mdiobus_free(lp->mii_bus);
 netif_napi_del(&lp->napi);
 pci_iounmap(pdev, lp->base);
 pci_release_regions(pdev);
 free_netdev(dev);
 pci_disable_device(pdev);
}
