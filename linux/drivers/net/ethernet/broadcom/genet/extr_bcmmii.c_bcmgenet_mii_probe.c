
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int irq; int supported; int advertising; int dev_flags; } ;
struct net_device {struct phy_device* phydev; } ;
struct device_node {int dummy; } ;
struct bcmgenet_priv {int old_link; int old_speed; int old_duplex; int old_pause; scalar_t__ internal_phy; int phy_interface; int phy_dn; int gphy_rev; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ENODEV ;
 int GENET_IS_V5 (struct bcmgenet_priv*) ;
 int PHY_IGNORE_INTERRUPT ;
 int bcmgenet_mii_config (struct net_device*,int) ;
 int bcmgenet_mii_setup ;
 int linkmode_copy (int ,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int ,int ,int ) ;
 int phy_connect_direct (struct net_device*,struct phy_device*,int ,int ) ;
 int phy_disconnect (struct phy_device*) ;
 int pr_err (char*) ;

int bcmgenet_mii_probe(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct device_node *dn = priv->pdev->dev.of_node;
 struct phy_device *phydev;
 u32 phy_flags = 0;
 int ret;


 if (priv->internal_phy)
  phy_flags = priv->gphy_rev;


 priv->old_link = -1;
 priv->old_speed = -1;
 priv->old_duplex = -1;
 priv->old_pause = -1;

 if (dn) {
  phydev = of_phy_connect(dev, priv->phy_dn, bcmgenet_mii_setup,
     phy_flags, priv->phy_interface);
  if (!phydev) {
   pr_err("could not attach to PHY\n");
   return -ENODEV;
  }
 } else {
  phydev = dev->phydev;
  phydev->dev_flags = phy_flags;

  ret = phy_connect_direct(dev, phydev, bcmgenet_mii_setup,
      priv->phy_interface);
  if (ret) {
   pr_err("could not attach to PHY\n");
   return -ENODEV;
  }
 }






 ret = bcmgenet_mii_config(dev, 1);
 if (ret) {
  phy_disconnect(dev->phydev);
  return ret;
 }

 linkmode_copy(phydev->advertising, phydev->supported);







 if (priv->internal_phy && !GENET_IS_V5(priv))
  dev->phydev->irq = PHY_IGNORE_INTERRUPT;

 return 0;
}
