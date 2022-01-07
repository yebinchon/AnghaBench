
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int advertising; int asym_pause; int pause; int duplex; int speed; int autoneg; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int advertising; int asym_pause; int pause; int duplex; int speed; int autoneg; } ;
struct emac_instance {TYPE_1__ phy; struct phy_device* phy_dev; } ;


 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static void emac_adjust_link(struct net_device *ndev)
{
 struct emac_instance *dev = netdev_priv(ndev);
 struct phy_device *phy = dev->phy_dev;

 dev->phy.autoneg = phy->autoneg;
 dev->phy.speed = phy->speed;
 dev->phy.duplex = phy->duplex;
 dev->phy.pause = phy->pause;
 dev->phy.asym_pause = phy->asym_pause;
 ethtool_convert_link_mode_to_legacy_u32(&dev->phy.advertising,
      phy->advertising);
}
