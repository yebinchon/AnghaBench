
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct b44_hw_stats {int syncp; int tx_good_octets; } ;
struct b44 {int lock; struct b44_hw_stats hw_stats; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int b44_gstrings ;
 int b44_stats_update (struct b44*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void b44_get_ethtool_stats(struct net_device *dev,
      struct ethtool_stats *stats, u64 *data)
{
 struct b44 *bp = netdev_priv(dev);
 struct b44_hw_stats *hwstat = &bp->hw_stats;
 u64 *data_src, *data_dst;
 unsigned int start;
 u32 i;

 spin_lock_irq(&bp->lock);
 b44_stats_update(bp);
 spin_unlock_irq(&bp->lock);

 do {
  data_src = &hwstat->tx_good_octets;
  data_dst = data;
  start = u64_stats_fetch_begin_irq(&hwstat->syncp);

  for (i = 0; i < ARRAY_SIZE(b44_gstrings); i++)
   *data_dst++ = *data_src++;

 } while (u64_stats_fetch_retry_irq(&hwstat->syncp, start));
}
