
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ltq_etop_priv {TYPE_1__* pldata; int mii_bus; } ;
struct TYPE_2__ {int mii_mode; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 int ltq_etop_mdio_link ;
 int netdev_err (struct net_device*,char*) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int *,int ) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;

__attribute__((used)) static int
ltq_etop_mdio_probe(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 struct phy_device *phydev;

 phydev = phy_find_first(priv->mii_bus);

 if (!phydev) {
  netdev_err(dev, "no PHY found\n");
  return -ENODEV;
 }

 phydev = phy_connect(dev, phydev_name(phydev),
        &ltq_etop_mdio_link, priv->pldata->mii_mode);

 if (IS_ERR(phydev)) {
  netdev_err(dev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }

 phy_set_max_speed(phydev, SPEED_100);

 phy_attached_info(phydev);

 return 0;
}
