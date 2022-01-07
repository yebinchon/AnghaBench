
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2io_nic {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_10000 ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int s2io_close (int ) ;
 int s2io_open (int ) ;

__attribute__((used)) static int
s2io_ethtool_set_link_ksettings(struct net_device *dev,
    const struct ethtool_link_ksettings *cmd)
{
 struct s2io_nic *sp = netdev_priv(dev);
 if ((cmd->base.autoneg == AUTONEG_ENABLE) ||
     (cmd->base.speed != SPEED_10000) ||
     (cmd->base.duplex != DUPLEX_FULL))
  return -EINVAL;
 else {
  s2io_close(sp->dev);
  s2io_open(sp->dev);
 }

 return 0;
}
