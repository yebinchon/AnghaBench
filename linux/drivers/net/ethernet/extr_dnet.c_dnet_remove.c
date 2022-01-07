
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int irq; scalar_t__ phydev; } ;
struct dnet {int mii_bus; } ;


 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct dnet* netdev_priv (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int dnet_remove(struct platform_device *pdev)
{

 struct net_device *dev;
 struct dnet *bp;

 dev = platform_get_drvdata(pdev);

 if (dev) {
  bp = netdev_priv(dev);
  if (dev->phydev)
   phy_disconnect(dev->phydev);
  mdiobus_unregister(bp->mii_bus);
  mdiobus_free(bp->mii_bus);
  unregister_netdev(dev);
  free_irq(dev->irq, dev);
  free_netdev(dev);
 }

 return 0;
}
