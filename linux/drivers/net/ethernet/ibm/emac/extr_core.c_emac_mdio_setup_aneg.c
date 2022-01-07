
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mii_phy {int advertising; int autoneg; struct net_device* dev; } ;
struct emac_instance {int phy_dev; } ;


 int AUTONEG_ENABLE ;
 int emac_mdio_phy_start_aneg (struct mii_phy*,int ) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_mdio_setup_aneg(struct mii_phy *phy, u32 advertise)
{
 struct net_device *ndev = phy->dev;
 struct emac_instance *dev = netdev_priv(ndev);

 phy->autoneg = AUTONEG_ENABLE;
 phy->advertising = advertise;
 return emac_mdio_phy_start_aneg(phy, dev->phy_dev);
}
