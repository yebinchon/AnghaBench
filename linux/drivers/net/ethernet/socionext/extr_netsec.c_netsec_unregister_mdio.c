
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct netsec_priv {int mii_bus; int dev; struct phy_device* phydev; } ;


 int dev_of_node (int ) ;
 int mdiobus_unregister (int ) ;
 int phy_device_free (struct phy_device*) ;
 int phy_device_remove (struct phy_device*) ;

__attribute__((used)) static void netsec_unregister_mdio(struct netsec_priv *priv)
{
 struct phy_device *phydev = priv->phydev;

 if (!dev_of_node(priv->dev) && phydev) {
  phy_device_remove(phydev);
  phy_device_free(phydev);
 }

 mdiobus_unregister(priv->mii_bus);
}
