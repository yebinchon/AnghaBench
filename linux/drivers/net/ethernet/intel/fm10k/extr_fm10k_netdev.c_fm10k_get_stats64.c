
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int rx_missed_errors; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {int rx_missed_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct fm10k_ring {TYPE_1__ stats; int syncp; } ;
struct fm10k_intfc {unsigned int num_rx_queues; unsigned int num_tx_queues; int * tx_ring; int * rx_ring; } ;


 struct fm10k_ring* READ_ONCE (int ) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void fm10k_get_stats64(struct net_device *netdev,
         struct rtnl_link_stats64 *stats)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 struct fm10k_ring *ring;
 unsigned int start, i;
 u64 bytes, packets;

 rcu_read_lock();

 for (i = 0; i < interface->num_rx_queues; i++) {
  ring = READ_ONCE(interface->rx_ring[i]);

  if (!ring)
   continue;

  do {
   start = u64_stats_fetch_begin_irq(&ring->syncp);
   packets = ring->stats.packets;
   bytes = ring->stats.bytes;
  } while (u64_stats_fetch_retry_irq(&ring->syncp, start));

  stats->rx_packets += packets;
  stats->rx_bytes += bytes;
 }

 for (i = 0; i < interface->num_tx_queues; i++) {
  ring = READ_ONCE(interface->tx_ring[i]);

  if (!ring)
   continue;

  do {
   start = u64_stats_fetch_begin_irq(&ring->syncp);
   packets = ring->stats.packets;
   bytes = ring->stats.bytes;
  } while (u64_stats_fetch_retry_irq(&ring->syncp, start));

  stats->tx_packets += packets;
  stats->tx_bytes += bytes;
 }

 rcu_read_unlock();


 stats->rx_missed_errors = netdev->stats.rx_missed_errors;
}
