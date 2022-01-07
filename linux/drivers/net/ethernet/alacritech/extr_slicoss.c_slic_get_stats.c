
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_stats {int dummy; } ;
struct slic_device {struct slic_stats stats; } ;
struct rtnl_link_stats64 {int tx_carrier_errors; int rx_fifo_errors; int rx_crc_errors; int rx_over_errors; int multicast; int tx_dropped; int rx_dropped; int rx_errors; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;


 int SLIC_GET_STATS_COUNTER (int ,struct slic_stats*,int ) ;
 struct slic_device* netdev_priv (struct net_device*) ;
 int rx_buff_miss ;
 int rx_buffoflow ;
 int rx_bytes ;
 int rx_crc ;
 int rx_errors ;
 int rx_mcasts ;
 int rx_oflow802 ;
 int rx_packets ;
 int tx_bytes ;
 int tx_carrier ;
 int tx_dropped ;
 int tx_packets ;

__attribute__((used)) static void slic_get_stats(struct net_device *dev,
      struct rtnl_link_stats64 *lst)
{
 struct slic_device *sdev = netdev_priv(dev);
 struct slic_stats *stats = &sdev->stats;

 SLIC_GET_STATS_COUNTER(lst->rx_packets, stats, rx_packets);
 SLIC_GET_STATS_COUNTER(lst->tx_packets, stats, tx_packets);
 SLIC_GET_STATS_COUNTER(lst->rx_bytes, stats, rx_bytes);
 SLIC_GET_STATS_COUNTER(lst->tx_bytes, stats, tx_bytes);
 SLIC_GET_STATS_COUNTER(lst->rx_errors, stats, rx_errors);
 SLIC_GET_STATS_COUNTER(lst->rx_dropped, stats, rx_buff_miss);
 SLIC_GET_STATS_COUNTER(lst->tx_dropped, stats, tx_dropped);
 SLIC_GET_STATS_COUNTER(lst->multicast, stats, rx_mcasts);
 SLIC_GET_STATS_COUNTER(lst->rx_over_errors, stats, rx_buffoflow);
 SLIC_GET_STATS_COUNTER(lst->rx_crc_errors, stats, rx_crc);
 SLIC_GET_STATS_COUNTER(lst->rx_fifo_errors, stats, rx_oflow802);
 SLIC_GET_STATS_COUNTER(lst->tx_carrier_errors, stats, tx_carrier);
}
