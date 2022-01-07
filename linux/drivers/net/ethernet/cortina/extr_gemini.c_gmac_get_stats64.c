
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int rx_missed_errors; int rx_dropped; int tx_dropped; int rx_fifo_errors; int multicast; int tx_bytes; int tx_packets; int tx_errors; int rx_frame_errors; int rx_crc_errors; int rx_over_errors; int rx_length_errors; int rx_errors; int rx_bytes; int rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_dropped; int rx_fifo_errors; int rx_missed_errors; int multicast; int tx_bytes; int tx_packets; int tx_errors; int rx_frame_errors; int rx_crc_errors; int rx_over_errors; int rx_length_errors; int rx_dropped; int rx_errors; int rx_bytes; int rx_packets; } ;
struct gemini_ethernet_port {TYPE_1__ stats; int tx_stats_syncp; int ir_stats_syncp; int rx_stats_syncp; } ;


 int gmac_update_hw_stats (struct net_device*) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;

__attribute__((used)) static void gmac_get_stats64(struct net_device *netdev,
        struct rtnl_link_stats64 *stats)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);
 unsigned int start;

 gmac_update_hw_stats(netdev);


 do {
  start = u64_stats_fetch_begin(&port->rx_stats_syncp);

  stats->rx_packets = port->stats.rx_packets;
  stats->rx_bytes = port->stats.rx_bytes;
  stats->rx_errors = port->stats.rx_errors;
  stats->rx_dropped = port->stats.rx_dropped;

  stats->rx_length_errors = port->stats.rx_length_errors;
  stats->rx_over_errors = port->stats.rx_over_errors;
  stats->rx_crc_errors = port->stats.rx_crc_errors;
  stats->rx_frame_errors = port->stats.rx_frame_errors;

 } while (u64_stats_fetch_retry(&port->rx_stats_syncp, start));


 do {
  start = u64_stats_fetch_begin(&port->ir_stats_syncp);

  stats->tx_errors = port->stats.tx_errors;
  stats->tx_packets = port->stats.tx_packets;
  stats->tx_bytes = port->stats.tx_bytes;

  stats->multicast = port->stats.multicast;
  stats->rx_missed_errors = port->stats.rx_missed_errors;
  stats->rx_fifo_errors = port->stats.rx_fifo_errors;

 } while (u64_stats_fetch_retry(&port->ir_stats_syncp, start));


 do {
  start = u64_stats_fetch_begin(&port->tx_stats_syncp);

  stats->tx_dropped = port->stats.tx_dropped;

 } while (u64_stats_fetch_retry(&port->tx_stats_syncp, start));

 stats->rx_dropped += stats->rx_missed_errors;
}
