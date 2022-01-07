
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct macb {int ethtool_stats; } ;
struct ethtool_stats {int dummy; } ;


 int GEM_STATS_LEN ;
 int MACB_MAX_QUEUES ;
 int QUEUE_STATS_LEN ;
 int gem_update_stats (struct macb*) ;
 int memcpy (int *,int *,int) ;
 struct macb* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gem_get_ethtool_stats(struct net_device *dev,
      struct ethtool_stats *stats, u64 *data)
{
 struct macb *bp;

 bp = netdev_priv(dev);
 gem_update_stats(bp);
 memcpy(data, &bp->ethtool_stats, sizeof(u64)
   * (GEM_STATS_LEN + QUEUE_STATS_LEN * MACB_MAX_QUEUES));
}
