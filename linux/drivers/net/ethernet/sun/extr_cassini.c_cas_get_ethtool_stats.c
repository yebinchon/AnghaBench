
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device_stats {int tx_packets; int tx_fifo_errors; int tx_errors; int tx_dropped; int tx_bytes; int tx_aborted_errors; int rx_packets; int rx_over_errors; int rx_length_errors; int rx_frame_errors; int rx_fifo_errors; int rx_errors; int rx_dropped; int rx_crc_errors; int rx_bytes; int collisions; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct cas {int dev; } ;


 int BUG_ON (int) ;
 int CAS_NUM_STAT_KEYS ;
 struct net_device_stats* cas_get_stats (int ) ;
 struct cas* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cas_get_ethtool_stats(struct net_device *dev,
          struct ethtool_stats *estats, u64 *data)
{
 struct cas *cp = netdev_priv(dev);
 struct net_device_stats *stats = cas_get_stats(cp->dev);
 int i = 0;
 data[i++] = stats->collisions;
 data[i++] = stats->rx_bytes;
 data[i++] = stats->rx_crc_errors;
 data[i++] = stats->rx_dropped;
 data[i++] = stats->rx_errors;
 data[i++] = stats->rx_fifo_errors;
 data[i++] = stats->rx_frame_errors;
 data[i++] = stats->rx_length_errors;
 data[i++] = stats->rx_over_errors;
 data[i++] = stats->rx_packets;
 data[i++] = stats->tx_aborted_errors;
 data[i++] = stats->tx_bytes;
 data[i++] = stats->tx_dropped;
 data[i++] = stats->tx_errors;
 data[i++] = stats->tx_fifo_errors;
 data[i++] = stats->tx_packets;
 BUG_ON(i != CAS_NUM_STAT_KEYS);
}
