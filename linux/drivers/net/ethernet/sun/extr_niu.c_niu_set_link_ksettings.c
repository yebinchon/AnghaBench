
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct niu_link_config {int autoneg; int duplex; int speed; int advertising; } ;
struct niu {struct niu_link_config link_config; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int autoneg; int duplex; int speed; } ;
struct TYPE_4__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ base; TYPE_2__ link_modes; } ;


 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 struct niu* netdev_priv (struct net_device*) ;
 int niu_init_link (struct niu*) ;

__attribute__((used)) static int niu_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct niu *np = netdev_priv(dev);
 struct niu_link_config *lp = &np->link_config;

 ethtool_convert_link_mode_to_legacy_u32(&lp->advertising,
      cmd->link_modes.advertising);
 lp->speed = cmd->base.speed;
 lp->duplex = cmd->base.duplex;
 lp->autoneg = cmd->base.autoneg;
 return niu_init_link(np);
}
