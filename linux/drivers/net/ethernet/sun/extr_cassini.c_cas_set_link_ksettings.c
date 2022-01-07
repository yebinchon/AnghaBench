
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct cas {int lock; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int cas_begin_auto_negotiation (struct cas*,struct ethtool_link_ksettings const*) ;
 struct cas* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cas_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct cas *cp = netdev_priv(dev);
 unsigned long flags;
 u32 speed = cmd->base.speed;


 if (cmd->base.autoneg != AUTONEG_ENABLE &&
     cmd->base.autoneg != AUTONEG_DISABLE)
  return -EINVAL;

 if (cmd->base.autoneg == AUTONEG_DISABLE &&
     ((speed != SPEED_1000 &&
       speed != SPEED_100 &&
       speed != SPEED_10) ||
      (cmd->base.duplex != DUPLEX_HALF &&
       cmd->base.duplex != DUPLEX_FULL)))
  return -EINVAL;


 spin_lock_irqsave(&cp->lock, flags);
 cas_begin_auto_negotiation(cp, cmd);
 spin_unlock_irqrestore(&cp->lock, flags);
 return 0;
}
