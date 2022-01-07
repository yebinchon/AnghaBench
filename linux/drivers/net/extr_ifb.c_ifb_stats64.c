
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int tx_dropped; int rx_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct TYPE_2__ {int tx_dropped; int rx_dropped; } ;
struct net_device {int num_tx_queues; TYPE_1__ stats; } ;
struct ifb_q_private {scalar_t__ tx_bytes; scalar_t__ tx_packets; int tsync; scalar_t__ rx_bytes; scalar_t__ rx_packets; int rsync; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;


 struct ifb_dev_private* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void ifb_stats64(struct net_device *dev,
   struct rtnl_link_stats64 *stats)
{
 struct ifb_dev_private *dp = netdev_priv(dev);
 struct ifb_q_private *txp = dp->tx_private;
 unsigned int start;
 u64 packets, bytes;
 int i;

 for (i = 0; i < dev->num_tx_queues; i++,txp++) {
  do {
   start = u64_stats_fetch_begin_irq(&txp->rsync);
   packets = txp->rx_packets;
   bytes = txp->rx_bytes;
  } while (u64_stats_fetch_retry_irq(&txp->rsync, start));
  stats->rx_packets += packets;
  stats->rx_bytes += bytes;

  do {
   start = u64_stats_fetch_begin_irq(&txp->tsync);
   packets = txp->tx_packets;
   bytes = txp->tx_bytes;
  } while (u64_stats_fetch_retry_irq(&txp->tsync, start));
  stats->tx_packets += packets;
  stats->tx_bytes += bytes;
 }
 stats->rx_dropped = dev->stats.rx_dropped;
 stats->tx_dropped = dev->stats.tx_dropped;
}
