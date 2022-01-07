
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int phydev; } ;
struct TYPE_4__ {int speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct b44 {int flags; int lock; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 scalar_t__ AUTONEG_ENABLE ;
 int B44_FLAG_100_BASE_T ;
 int B44_FLAG_ADV_100FULL ;
 int B44_FLAG_ADV_100HALF ;
 int B44_FLAG_ADV_10FULL ;
 int B44_FLAG_ADV_10HALF ;
 int B44_FLAG_EXTERNAL_PHY ;
 int B44_FLAG_FORCE_LINK ;
 int B44_FLAG_FULL_DUPLEX ;
 int BUG_ON (int) ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int SPEED_10 ;
 int SPEED_100 ;
 int b44_setup_phy (struct b44*) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 struct b44* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int phy_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct b44 *bp = netdev_priv(dev);
 u32 speed;
 int ret;
 u32 advertising;

 if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
  BUG_ON(!dev->phydev);
  spin_lock_irq(&bp->lock);
  if (netif_running(dev))
   b44_setup_phy(bp);

  ret = phy_ethtool_ksettings_set(dev->phydev, cmd);

  spin_unlock_irq(&bp->lock);

  return ret;
 }

 speed = cmd->base.speed;

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);


 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  if (advertising &
      (ADVERTISED_1000baseT_Half |
       ADVERTISED_1000baseT_Full))
   return -EINVAL;
 } else if ((speed != SPEED_100 &&
      speed != SPEED_10) ||
     (cmd->base.duplex != DUPLEX_HALF &&
      cmd->base.duplex != DUPLEX_FULL)) {
   return -EINVAL;
 }

 spin_lock_irq(&bp->lock);

 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  bp->flags &= ~(B44_FLAG_FORCE_LINK |
          B44_FLAG_100_BASE_T |
          B44_FLAG_FULL_DUPLEX |
          B44_FLAG_ADV_10HALF |
          B44_FLAG_ADV_10FULL |
          B44_FLAG_ADV_100HALF |
          B44_FLAG_ADV_100FULL);
  if (advertising == 0) {
   bp->flags |= (B44_FLAG_ADV_10HALF |
          B44_FLAG_ADV_10FULL |
          B44_FLAG_ADV_100HALF |
          B44_FLAG_ADV_100FULL);
  } else {
   if (advertising & ADVERTISED_10baseT_Half)
    bp->flags |= B44_FLAG_ADV_10HALF;
   if (advertising & ADVERTISED_10baseT_Full)
    bp->flags |= B44_FLAG_ADV_10FULL;
   if (advertising & ADVERTISED_100baseT_Half)
    bp->flags |= B44_FLAG_ADV_100HALF;
   if (advertising & ADVERTISED_100baseT_Full)
    bp->flags |= B44_FLAG_ADV_100FULL;
  }
 } else {
  bp->flags |= B44_FLAG_FORCE_LINK;
  bp->flags &= ~(B44_FLAG_100_BASE_T | B44_FLAG_FULL_DUPLEX);
  if (speed == SPEED_100)
   bp->flags |= B44_FLAG_100_BASE_T;
  if (cmd->base.duplex == DUPLEX_FULL)
   bp->flags |= B44_FLAG_FULL_DUPLEX;
 }

 if (netif_running(dev))
  b44_setup_phy(bp);

 spin_unlock_irq(&bp->lock);

 return 0;
}
