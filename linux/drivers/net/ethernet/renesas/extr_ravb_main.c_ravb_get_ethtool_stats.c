
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ravb_private {int * dirty_tx; int * dirty_rx; int * cur_tx; int * cur_rx; struct net_device_stats* stats; } ;
struct net_device_stats {int rx_over_errors; int rx_missed_errors; int rx_length_errors; int rx_frame_errors; int rx_crc_errors; int rx_errors; int multicast; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int NUM_RX_QUEUE ;
 int RAVB_BE ;
 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ravb_get_ethtool_stats(struct net_device *ndev,
       struct ethtool_stats *estats, u64 *data)
{
 struct ravb_private *priv = netdev_priv(ndev);
 int i = 0;
 int q;


 for (q = RAVB_BE; q < NUM_RX_QUEUE; q++) {
  struct net_device_stats *stats = &priv->stats[q];

  data[i++] = priv->cur_rx[q];
  data[i++] = priv->cur_tx[q];
  data[i++] = priv->dirty_rx[q];
  data[i++] = priv->dirty_tx[q];
  data[i++] = stats->rx_packets;
  data[i++] = stats->tx_packets;
  data[i++] = stats->rx_bytes;
  data[i++] = stats->tx_bytes;
  data[i++] = stats->multicast;
  data[i++] = stats->rx_errors;
  data[i++] = stats->rx_crc_errors;
  data[i++] = stats->rx_frame_errors;
  data[i++] = stats->rx_length_errors;
  data[i++] = stats->rx_missed_errors;
  data[i++] = stats->rx_over_errors;
 }
}
