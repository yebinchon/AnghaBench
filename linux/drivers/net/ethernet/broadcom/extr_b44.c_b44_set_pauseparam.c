
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct b44 {int flags; int lock; } ;


 int B44_FLAG_PAUSE_AUTO ;
 int B44_FLAG_RX_PAUSE ;
 int B44_FLAG_TX_PAUSE ;
 int B44_FULL_RESET ;
 int __b44_set_flow_ctrl (struct b44*,int) ;
 int b44_enable_ints (struct b44*) ;
 int b44_halt (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_init_rings (struct b44*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_set_pauseparam(struct net_device *dev,
    struct ethtool_pauseparam *epause)
{
 struct b44 *bp = netdev_priv(dev);

 spin_lock_irq(&bp->lock);
 if (epause->autoneg)
  bp->flags |= B44_FLAG_PAUSE_AUTO;
 else
  bp->flags &= ~B44_FLAG_PAUSE_AUTO;
 if (epause->rx_pause)
  bp->flags |= B44_FLAG_RX_PAUSE;
 else
  bp->flags &= ~B44_FLAG_RX_PAUSE;
 if (epause->tx_pause)
  bp->flags |= B44_FLAG_TX_PAUSE;
 else
  bp->flags &= ~B44_FLAG_TX_PAUSE;
 if (bp->flags & B44_FLAG_PAUSE_AUTO) {
  b44_halt(bp);
  b44_init_rings(bp);
  b44_init_hw(bp, B44_FULL_RESET);
 } else {
  __b44_set_flow_ctrl(bp, bp->flags);
 }
 spin_unlock_irq(&bp->lock);

 b44_enable_ints(bp);

 return 0;
}
