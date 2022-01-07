
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct niu_link_config {int active_duplex; int active_speed; int active_autoneg; int active_advertising; int supported; } ;
struct niu {int flags; int phy_addr; struct niu_link_config link_config; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int port; int duplex; int speed; int autoneg; int phy_address; } ;
struct TYPE_3__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int NIU_FLAGS_FIBER ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 int memset (struct ethtool_link_ksettings*,int ,int) ;
 struct niu* netdev_priv (struct net_device*) ;

__attribute__((used)) static int niu_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 struct niu *np = netdev_priv(dev);
 struct niu_link_config *lp;

 lp = &np->link_config;

 memset(cmd, 0, sizeof(*cmd));
 cmd->base.phy_address = np->phy_addr;
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      lp->supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      lp->active_advertising);
 cmd->base.autoneg = lp->active_autoneg;
 cmd->base.speed = lp->active_speed;
 cmd->base.duplex = lp->active_duplex;
 cmd->base.port = (np->flags & NIU_FLAGS_FIBER) ? PORT_FIBRE : PORT_TP;

 return 0;
}
