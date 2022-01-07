
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int asym_pause; int pause; int duplex; int speed; } ;
struct net_device {int dummy; } ;
struct mii_phy {int asym_pause; int pause; int duplex; int speed; struct net_device* dev; } ;
struct emac_instance {struct phy_device* phy_dev; } ;


 struct emac_instance* netdev_priv (struct net_device*) ;
 int phy_read_status (struct phy_device*) ;

__attribute__((used)) static int emac_mdio_read_link(struct mii_phy *phy)
{
 struct net_device *ndev = phy->dev;
 struct emac_instance *dev = netdev_priv(ndev);
 struct phy_device *phy_dev = dev->phy_dev;
 int res;

 res = phy_read_status(phy_dev);
 if (res)
  return res;

 phy->speed = phy_dev->speed;
 phy->duplex = phy_dev->duplex;
 phy->pause = phy_dev->pause;
 phy->asym_pause = phy_dev->asym_pause;
 return 0;
}
