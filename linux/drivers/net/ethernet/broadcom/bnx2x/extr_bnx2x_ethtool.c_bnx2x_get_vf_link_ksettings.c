
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int autoneg; int phy_address; int port; int duplex; int speed; int cmd; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_1__ link_modes; } ;
struct TYPE_5__ {int line_speed; int link_report_flags; } ;
struct bnx2x {scalar_t__ state; TYPE_2__ vf_link_vars; } ;


 int AUTONEG_DISABLE ;
 int BNX2X_LINK_REPORT_FD ;
 int BNX2X_MSG_ETHTOOL ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int DP (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int PORT_OTHER ;
 int SPEED_UNKNOWN ;
 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_get_vf_link_ksettings(struct net_device *dev,
           struct ethtool_link_ksettings *cmd)
{
 struct bnx2x *bp = netdev_priv(dev);
 u32 supported, advertising;

 ethtool_convert_link_mode_to_legacy_u32(&supported,
      cmd->link_modes.supported);
 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);

 if (bp->state == BNX2X_STATE_OPEN) {
  if (test_bit(BNX2X_LINK_REPORT_FD,
        &bp->vf_link_vars.link_report_flags))
   cmd->base.duplex = DUPLEX_FULL;
  else
   cmd->base.duplex = DUPLEX_HALF;

  cmd->base.speed = bp->vf_link_vars.line_speed;
 } else {
  cmd->base.duplex = DUPLEX_UNKNOWN;
  cmd->base.speed = SPEED_UNKNOWN;
 }

 cmd->base.port = PORT_OTHER;
 cmd->base.phy_address = 0;
 cmd->base.autoneg = AUTONEG_DISABLE;

 DP(BNX2X_MSG_ETHTOOL, "ethtool_cmd: cmd %d\n"
    "  supported 0x%x  advertising 0x%x  speed %u\n"
    "  duplex %d  port %d  phy_address %d\n"
    "  autoneg %d\n",
    cmd->base.cmd, supported, advertising,
    cmd->base.speed,
    cmd->base.duplex, cmd->base.port, cmd->base.phy_address,
    cmd->base.autoneg);

 return 0;
}
