
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int rx_missed_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; int multicast; int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {int rx_missed_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; int multicast; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct ixgbe_ring {TYPE_1__ stats; int syncp; } ;
struct ixgbe_adapter {int num_rx_queues; int num_tx_queues; int num_xdp_queues; int * xdp_ring; int * tx_ring; int * rx_ring; } ;


 struct ixgbe_ring* READ_ONCE (int ) ;
 int ixgbe_get_ring_stats64 (struct rtnl_link_stats64*,struct ixgbe_ring*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void ixgbe_get_stats64(struct net_device *netdev,
         struct rtnl_link_stats64 *stats)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 int i;

 rcu_read_lock();
 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct ixgbe_ring *ring = READ_ONCE(adapter->rx_ring[i]);
  u64 bytes, packets;
  unsigned int start;

  if (ring) {
   do {
    start = u64_stats_fetch_begin_irq(&ring->syncp);
    packets = ring->stats.packets;
    bytes = ring->stats.bytes;
   } while (u64_stats_fetch_retry_irq(&ring->syncp, start));
   stats->rx_packets += packets;
   stats->rx_bytes += bytes;
  }
 }

 for (i = 0; i < adapter->num_tx_queues; i++) {
  struct ixgbe_ring *ring = READ_ONCE(adapter->tx_ring[i]);

  ixgbe_get_ring_stats64(stats, ring);
 }
 for (i = 0; i < adapter->num_xdp_queues; i++) {
  struct ixgbe_ring *ring = READ_ONCE(adapter->xdp_ring[i]);

  ixgbe_get_ring_stats64(stats, ring);
 }
 rcu_read_unlock();


 stats->multicast = netdev->stats.multicast;
 stats->rx_errors = netdev->stats.rx_errors;
 stats->rx_length_errors = netdev->stats.rx_length_errors;
 stats->rx_crc_errors = netdev->stats.rx_crc_errors;
 stats->rx_missed_errors = netdev->stats.rx_missed_errors;
}
