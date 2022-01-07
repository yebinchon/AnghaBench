
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_dropped; int rx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;
struct myri10ge_slice_netstats {scalar_t__ tx_dropped; scalar_t__ rx_dropped; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct myri10ge_priv {int num_slices; TYPE_1__* ss; } ;
struct TYPE_2__ {struct myri10ge_slice_netstats stats; } ;


 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void myri10ge_get_stats(struct net_device *dev,
          struct rtnl_link_stats64 *stats)
{
 const struct myri10ge_priv *mgp = netdev_priv(dev);
 const struct myri10ge_slice_netstats *slice_stats;
 int i;

 for (i = 0; i < mgp->num_slices; i++) {
  slice_stats = &mgp->ss[i].stats;
  stats->rx_packets += slice_stats->rx_packets;
  stats->tx_packets += slice_stats->tx_packets;
  stats->rx_bytes += slice_stats->rx_bytes;
  stats->tx_bytes += slice_stats->tx_bytes;
  stats->rx_dropped += slice_stats->rx_dropped;
  stats->tx_dropped += slice_stats->tx_dropped;
 }
}
