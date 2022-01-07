
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vxgedev {int no_of_vpath; TYPE_3__* vpaths; } ;
struct vxge_ring_stats {scalar_t__ rx_dropped; scalar_t__ rx_errors; scalar_t__ rx_bytes; scalar_t__ rx_mcast; scalar_t__ rx_frms; int syncp; } ;
struct vxge_fifo_stats {scalar_t__ tx_errors; scalar_t__ tx_bytes; scalar_t__ tx_frms; int syncp; } ;
struct rtnl_link_stats64 {int tx_errors; int tx_bytes; int tx_packets; int rx_dropped; int rx_errors; int multicast; int rx_bytes; int rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct vxge_fifo_stats stats; } ;
struct TYPE_4__ {struct vxge_ring_stats stats; } ;
struct TYPE_6__ {TYPE_2__ fifo; TYPE_1__ ring; } ;


 struct vxgedev* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void
vxge_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *net_stats)
{
 struct vxgedev *vdev = netdev_priv(dev);
 int k;


 for (k = 0; k < vdev->no_of_vpath; k++) {
  struct vxge_ring_stats *rxstats = &vdev->vpaths[k].ring.stats;
  struct vxge_fifo_stats *txstats = &vdev->vpaths[k].fifo.stats;
  unsigned int start;
  u64 packets, bytes, multicast;

  do {
   start = u64_stats_fetch_begin_irq(&rxstats->syncp);

   packets = rxstats->rx_frms;
   multicast = rxstats->rx_mcast;
   bytes = rxstats->rx_bytes;
  } while (u64_stats_fetch_retry_irq(&rxstats->syncp, start));

  net_stats->rx_packets += packets;
  net_stats->rx_bytes += bytes;
  net_stats->multicast += multicast;

  net_stats->rx_errors += rxstats->rx_errors;
  net_stats->rx_dropped += rxstats->rx_dropped;

  do {
   start = u64_stats_fetch_begin_irq(&txstats->syncp);

   packets = txstats->tx_frms;
   bytes = txstats->tx_bytes;
  } while (u64_stats_fetch_retry_irq(&txstats->syncp, start));

  net_stats->tx_packets += packets;
  net_stats->tx_bytes += bytes;
  net_stats->tx_errors += txstats->tx_errors;
 }
}
