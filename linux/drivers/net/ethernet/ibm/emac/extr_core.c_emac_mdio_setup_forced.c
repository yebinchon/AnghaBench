
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_phy {int speed; int duplex; int autoneg; struct net_device* dev; } ;
struct emac_instance {int phy_dev; } ;


 int AUTONEG_DISABLE ;
 int emac_mdio_phy_start_aneg (struct mii_phy*,int ) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_mdio_setup_forced(struct mii_phy *phy, int speed, int fd)
{
 struct net_device *ndev = phy->dev;
 struct emac_instance *dev = netdev_priv(ndev);

 phy->autoneg = AUTONEG_DISABLE;
 phy->speed = speed;
 phy->duplex = fd;
 return emac_mdio_phy_start_aneg(phy, dev->phy_dev);
}
