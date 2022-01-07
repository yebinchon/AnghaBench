
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_phy {struct net_device* dev; } ;
struct emac_instance {int phy_dev; } ;


 struct emac_instance* netdev_priv (struct net_device*) ;
 int phy_init_hw (int ) ;
 int phy_start (int ) ;

__attribute__((used)) static int emac_mdio_init_phy(struct mii_phy *phy)
{
 struct net_device *ndev = phy->dev;
 struct emac_instance *dev = netdev_priv(ndev);

 phy_start(dev->phy_dev);
 return phy_init_hw(dev->phy_dev);
}
