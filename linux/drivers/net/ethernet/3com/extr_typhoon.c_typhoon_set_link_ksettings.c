
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct typhoon {int speed; int duplex; void* xcvr_select; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int speed; scalar_t__ autoneg; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct cmd_desc {void* parm1; } ;
typedef void* __le16 ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EINVAL ;
 int INIT_COMMAND_NO_RESPONSE (struct cmd_desc*,int ) ;
 int SPEED_10 ;
 int SPEED_100 ;
 int TYPHOON_CMD_XCVR_SELECT ;
 void* TYPHOON_XCVR_100FULL ;
 void* TYPHOON_XCVR_100HALF ;
 void* TYPHOON_XCVR_10FULL ;
 void* TYPHOON_XCVR_10HALF ;
 void* TYPHOON_XCVR_AUTONEG ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int typhoon_issue_command (struct typhoon*,int,struct cmd_desc*,int ,int *) ;

__attribute__((used)) static int
typhoon_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct typhoon *tp = netdev_priv(dev);
 u32 speed = cmd->base.speed;
 struct cmd_desc xp_cmd;
 __le16 xcvr;
 int err;

 err = -EINVAL;
 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  xcvr = TYPHOON_XCVR_AUTONEG;
 } else {
  if (cmd->base.duplex == DUPLEX_HALF) {
   if (speed == SPEED_10)
    xcvr = TYPHOON_XCVR_10HALF;
   else if (speed == SPEED_100)
    xcvr = TYPHOON_XCVR_100HALF;
   else
    goto out;
  } else if (cmd->base.duplex == DUPLEX_FULL) {
   if (speed == SPEED_10)
    xcvr = TYPHOON_XCVR_10FULL;
   else if (speed == SPEED_100)
    xcvr = TYPHOON_XCVR_100FULL;
   else
    goto out;
  } else
   goto out;
 }

 INIT_COMMAND_NO_RESPONSE(&xp_cmd, TYPHOON_CMD_XCVR_SELECT);
 xp_cmd.parm1 = xcvr;
 err = typhoon_issue_command(tp, 1, &xp_cmd, 0, ((void*)0));
 if(err < 0)
  goto out;

 tp->xcvr_select = xcvr;
 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  tp->speed = 0xff;
  tp->duplex = 0xff;
 } else {
  tp->speed = speed;
  tp->duplex = cmd->base.duplex;
 }

out:
 return err;
}
