
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {int phylink; int dev; int mii; TYPE_1__* plat; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int phy_addr; struct device_node* phylink_node; } ;


 int ENODEV ;
 struct phy_device* mdiobus_get_phy (int ,int) ;
 int netdev_err (int ,char*,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_connect_phy (int ,struct phy_device*) ;
 int phylink_of_phy_connect (int ,struct device_node*,int ) ;

__attribute__((used)) static int stmmac_init_phy(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 struct device_node *node;
 int ret;

 node = priv->plat->phylink_node;

 if (node)
  ret = phylink_of_phy_connect(priv->phylink, node, 0);




 if (!node || ret) {
  int addr = priv->plat->phy_addr;
  struct phy_device *phydev;

  phydev = mdiobus_get_phy(priv->mii, addr);
  if (!phydev) {
   netdev_err(priv->dev, "no phy at addr %d\n", addr);
   return -ENODEV;
  }

  ret = phylink_connect_phy(priv->phylink, phydev);
 }

 return ret;
}
