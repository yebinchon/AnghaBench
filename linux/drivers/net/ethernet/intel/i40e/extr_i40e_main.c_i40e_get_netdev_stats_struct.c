
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int rx_length_errors; int rx_crc_errors; int rx_dropped; int rx_errors; int tx_dropped; int tx_errors; int multicast; int rx_bytes; int rx_packets; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {int num_queue_pairs; int * tx_rings; int state; } ;
struct TYPE_2__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct i40e_ring {TYPE_1__ stats; int syncp; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 struct i40e_ring* READ_ONCE (int ) ;
 int __I40E_VSI_DOWN ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_get_netdev_stats_struct_tx (struct i40e_ring*,struct rtnl_link_stats64*) ;
 struct rtnl_link_stats64* i40e_get_vsi_stats_struct (struct i40e_vsi*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int ) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void i40e_get_netdev_stats_struct(struct net_device *netdev,
      struct rtnl_link_stats64 *stats)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct rtnl_link_stats64 *vsi_stats = i40e_get_vsi_stats_struct(vsi);
 struct i40e_ring *ring;
 int i;

 if (test_bit(__I40E_VSI_DOWN, vsi->state))
  return;

 if (!vsi->tx_rings)
  return;

 rcu_read_lock();
 for (i = 0; i < vsi->num_queue_pairs; i++) {
  u64 bytes, packets;
  unsigned int start;

  ring = READ_ONCE(vsi->tx_rings[i]);
  if (!ring)
   continue;
  i40e_get_netdev_stats_struct_tx(ring, stats);

  if (i40e_enabled_xdp_vsi(vsi)) {
   ring++;
   i40e_get_netdev_stats_struct_tx(ring, stats);
  }

  ring++;
  do {
   start = u64_stats_fetch_begin_irq(&ring->syncp);
   packets = ring->stats.packets;
   bytes = ring->stats.bytes;
  } while (u64_stats_fetch_retry_irq(&ring->syncp, start));

  stats->rx_packets += packets;
  stats->rx_bytes += bytes;

 }
 rcu_read_unlock();


 stats->multicast = vsi_stats->multicast;
 stats->tx_errors = vsi_stats->tx_errors;
 stats->tx_dropped = vsi_stats->tx_dropped;
 stats->rx_errors = vsi_stats->rx_errors;
 stats->rx_dropped = vsi_stats->rx_dropped;
 stats->rx_crc_errors = vsi_stats->rx_crc_errors;
 stats->rx_length_errors = vsi_stats->rx_length_errors;
}
