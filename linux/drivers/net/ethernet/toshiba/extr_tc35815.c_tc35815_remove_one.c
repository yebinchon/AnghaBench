
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc35815_local {int mii_bus; } ;
struct pci_dev {int dummy; } ;
struct net_device {int phydev; } ;


 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int phy_disconnect (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void tc35815_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct tc35815_local *lp = netdev_priv(dev);

 phy_disconnect(dev->phydev);
 mdiobus_unregister(lp->mii_bus);
 mdiobus_free(lp->mii_bus);
 unregister_netdev(dev);
 free_netdev(dev);
}
