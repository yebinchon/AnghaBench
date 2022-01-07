
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int advertising; int supported; } ;
struct TYPE_4__ {int duplex; int speed; int autoneg; int phy_address; int port; } ;
struct ethtool_link_ksettings {TYPE_3__ link_modes; TYPE_1__ base; } ;
struct TYPE_5__ {int duplex; int speed; int autoneg; int advertising; int address; int features; } ;
struct emac_instance {int link_lock; TYPE_2__ phy; } ;


 int PORT_MII ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_ethtool_get_link_ksettings(struct net_device *ndev,
        struct ethtool_link_ksettings *cmd)
{
 struct emac_instance *dev = netdev_priv(ndev);
 u32 supported, advertising;

 supported = dev->phy.features;
 cmd->base.port = PORT_MII;
 cmd->base.phy_address = dev->phy.address;

 mutex_lock(&dev->link_lock);
 advertising = dev->phy.advertising;
 cmd->base.autoneg = dev->phy.autoneg;
 cmd->base.speed = dev->phy.speed;
 cmd->base.duplex = dev->phy.duplex;
 mutex_unlock(&dev->link_lock);

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
