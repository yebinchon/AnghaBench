
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {struct slcompress* slcomp; } ;
struct slcompress {scalar_t__ sls_o_misses; scalar_t__ sls_o_compressed; scalar_t__ sls_i_tossed; scalar_t__ sls_i_compressed; } ;
struct rtnl_link_stats64 {int collisions; int tx_fifo_errors; int rx_dropped; int rx_fifo_errors; scalar_t__ tx_compressed; scalar_t__ rx_compressed; int rx_over_errors; int rx_errors; int tx_errors; int tx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device_stats {int rx_over_errors; int rx_errors; int tx_errors; int tx_dropped; int rx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;


 struct slip* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
sl_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct net_device_stats *devstats = &dev->stats;




 stats->rx_packets = devstats->rx_packets;
 stats->tx_packets = devstats->tx_packets;
 stats->rx_bytes = devstats->rx_bytes;
 stats->tx_bytes = devstats->tx_bytes;
 stats->rx_dropped = devstats->rx_dropped;
 stats->tx_dropped = devstats->tx_dropped;
 stats->tx_errors = devstats->tx_errors;
 stats->rx_errors = devstats->rx_errors;
 stats->rx_over_errors = devstats->rx_over_errors;
}
