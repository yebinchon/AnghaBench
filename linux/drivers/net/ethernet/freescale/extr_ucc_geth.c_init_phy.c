
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {int oldduplex; scalar_t__ phy_interface; struct phy_device* phydev; int max_speed; scalar_t__ oldspeed; scalar_t__ oldlink; struct ucc_geth_info* ug_info; } ;
struct ucc_geth_info {int phy_node; } ;
struct phy_device {int dummy; } ;
struct net_device {int dev; } ;


 int ENODEV ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int adjust_link ;
 int dev_err (int *,char*) ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int *,int ,scalar_t__) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int uec_configure_serdes (struct net_device*) ;

__attribute__((used)) static int init_phy(struct net_device *dev)
{
 struct ucc_geth_private *priv = netdev_priv(dev);
 struct ucc_geth_info *ug_info = priv->ug_info;
 struct phy_device *phydev;

 priv->oldlink = 0;
 priv->oldspeed = 0;
 priv->oldduplex = -1;

 phydev = of_phy_connect(dev, ug_info->phy_node, &adjust_link, 0,
    priv->phy_interface);
 if (!phydev) {
  dev_err(&dev->dev, "Could not attach to PHY\n");
  return -ENODEV;
 }

 if (priv->phy_interface == PHY_INTERFACE_MODE_SGMII)
  uec_configure_serdes(dev);

 phy_set_max_speed(phydev, priv->max_speed);

 priv->phydev = phydev;

 return 0;
}
