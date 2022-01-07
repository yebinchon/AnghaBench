
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ltq_etop_priv {int mii_bus; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int phy_disconnect (int ) ;

__attribute__((used)) static void
ltq_etop_mdio_cleanup(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);

 phy_disconnect(dev->phydev);
 mdiobus_unregister(priv->mii_bus);
 mdiobus_free(priv->mii_bus);
}
