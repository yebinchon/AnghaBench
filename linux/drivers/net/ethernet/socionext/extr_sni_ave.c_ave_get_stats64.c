
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtnl_link_stats64 {int collisions; int rx_fifo_errors; int tx_dropped; int rx_dropped; int tx_errors; int rx_errors; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int collisions; int dropped; int errors; int bytes; int packets; int syncp; } ;
struct TYPE_3__ {int fifo_errors; int dropped; int errors; int bytes; int packets; int syncp; } ;
struct ave_private {TYPE_2__ stats_tx; TYPE_1__ stats_rx; } ;


 struct ave_private* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void ave_get_stats64(struct net_device *ndev,
       struct rtnl_link_stats64 *stats)
{
 struct ave_private *priv = netdev_priv(ndev);
 unsigned int start;

 do {
  start = u64_stats_fetch_begin_irq(&priv->stats_rx.syncp);
  stats->rx_packets = priv->stats_rx.packets;
  stats->rx_bytes = priv->stats_rx.bytes;
 } while (u64_stats_fetch_retry_irq(&priv->stats_rx.syncp, start));

 do {
  start = u64_stats_fetch_begin_irq(&priv->stats_tx.syncp);
  stats->tx_packets = priv->stats_tx.packets;
  stats->tx_bytes = priv->stats_tx.bytes;
 } while (u64_stats_fetch_retry_irq(&priv->stats_tx.syncp, start));

 stats->rx_errors = priv->stats_rx.errors;
 stats->tx_errors = priv->stats_tx.errors;
 stats->rx_dropped = priv->stats_rx.dropped;
 stats->tx_dropped = priv->stats_tx.dropped;
 stats->rx_fifo_errors = priv->stats_rx.fifo_errors;
 stats->collisions = priv->stats_tx.collisions;
}
