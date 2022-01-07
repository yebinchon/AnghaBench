
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct gem {int link_timer; int dev; } ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int del_timer_sync (int *) ;
 int ethtool_convert_link_mode_to_legacy_u32 (scalar_t__*,int ) ;
 int gem_begin_auto_negotiation (struct gem*,struct ethtool_link_ksettings const*) ;
 struct gem* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (int ) ;

__attribute__((used)) static int gem_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct gem *gp = netdev_priv(dev);
 u32 speed = cmd->base.speed;
 u32 advertising;

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);


 if (cmd->base.autoneg != AUTONEG_ENABLE &&
     cmd->base.autoneg != AUTONEG_DISABLE)
  return -EINVAL;

 if (cmd->base.autoneg == AUTONEG_ENABLE &&
     advertising == 0)
  return -EINVAL;

 if (cmd->base.autoneg == AUTONEG_DISABLE &&
     ((speed != SPEED_1000 &&
       speed != SPEED_100 &&
       speed != SPEED_10) ||
      (cmd->base.duplex != DUPLEX_HALF &&
       cmd->base.duplex != DUPLEX_FULL)))
  return -EINVAL;


 if (netif_device_present(gp->dev)) {
  del_timer_sync(&gp->link_timer);
  gem_begin_auto_negotiation(gp, cmd);
 }

 return 0;
}
