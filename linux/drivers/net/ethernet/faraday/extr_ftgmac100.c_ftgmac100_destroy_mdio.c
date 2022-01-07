
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ftgmac100 {int mii_bus; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int phy_disconnect (int ) ;

__attribute__((used)) static void ftgmac100_destroy_mdio(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);

 if (!netdev->phydev)
  return;

 phy_disconnect(netdev->phydev);
 mdiobus_unregister(priv->mii_bus);
 mdiobus_free(priv->mii_bus);
}
