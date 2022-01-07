
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_local {scalar_t__ phy_type; int ctl_rfduplx; int lock; int mii; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ speed; scalar_t__ duplex; scalar_t__ port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ PORT_AUI ;
 scalar_t__ PORT_TP ;
 scalar_t__ SPEED_10 ;
 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
smc_ethtool_set_link_ksettings(struct net_device *dev,
          const struct ethtool_link_ksettings *cmd)
{
 struct smc_local *lp = netdev_priv(dev);
 int ret;

 if (lp->phy_type != 0) {
  spin_lock_irq(&lp->lock);
  ret = mii_ethtool_set_link_ksettings(&lp->mii, cmd);
  spin_unlock_irq(&lp->lock);
 } else {
  if (cmd->base.autoneg != AUTONEG_DISABLE ||
      cmd->base.speed != SPEED_10 ||
      (cmd->base.duplex != DUPLEX_HALF &&
       cmd->base.duplex != DUPLEX_FULL) ||
      (cmd->base.port != PORT_TP && cmd->base.port != PORT_AUI))
   return -EINVAL;


  lp->ctl_rfduplx = cmd->base.duplex == DUPLEX_FULL;




  ret = 0;
 }

 return ret;
}
