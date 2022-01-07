
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int rx_length_errors; int rx_crc_errors; int rx_dropped; int rx_errors; int tx_dropped; int tx_errors; int multicast; int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;
struct ice_vsi {int state; int num_rxq; int num_txq; struct rtnl_link_stats64 net_stats; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;


 int __ICE_DOWN ;
 int ice_update_vsi_ring_stats (struct ice_vsi*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static
void ice_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct rtnl_link_stats64 *vsi_stats;
 struct ice_vsi *vsi = np->vsi;

 vsi_stats = &vsi->net_stats;

 if (!vsi->num_txq || !vsi->num_rxq)
  return;






 if (!test_bit(__ICE_DOWN, vsi->state))
  ice_update_vsi_ring_stats(vsi);
 stats->tx_packets = vsi_stats->tx_packets;
 stats->tx_bytes = vsi_stats->tx_bytes;
 stats->rx_packets = vsi_stats->rx_packets;
 stats->rx_bytes = vsi_stats->rx_bytes;





 stats->multicast = vsi_stats->multicast;
 stats->tx_errors = vsi_stats->tx_errors;
 stats->tx_dropped = vsi_stats->tx_dropped;
 stats->rx_errors = vsi_stats->rx_errors;
 stats->rx_dropped = vsi_stats->rx_dropped;
 stats->rx_crc_errors = vsi_stats->rx_crc_errors;
 stats->rx_length_errors = vsi_stats->rx_length_errors;
}
