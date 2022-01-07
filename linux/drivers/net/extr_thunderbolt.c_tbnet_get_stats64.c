
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rx_missed_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_over_errors; scalar_t__ rx_length_errors; int tx_errors; scalar_t__ rx_errors; int rx_bytes; int tx_bytes; int rx_packets; int tx_packets; } ;
struct tbnet {TYPE_1__ stats; } ;
struct rtnl_link_stats64 {scalar_t__ rx_missed_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_over_errors; scalar_t__ rx_length_errors; int tx_errors; scalar_t__ rx_errors; int rx_bytes; int tx_bytes; int rx_packets; int tx_packets; } ;
struct net_device {int dummy; } ;


 struct tbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tbnet_get_stats64(struct net_device *dev,
         struct rtnl_link_stats64 *stats)
{
 struct tbnet *net = netdev_priv(dev);

 stats->tx_packets = net->stats.tx_packets;
 stats->rx_packets = net->stats.rx_packets;
 stats->tx_bytes = net->stats.tx_bytes;
 stats->rx_bytes = net->stats.rx_bytes;
 stats->rx_errors = net->stats.rx_errors + net->stats.rx_length_errors +
  net->stats.rx_over_errors + net->stats.rx_crc_errors +
  net->stats.rx_missed_errors;
 stats->tx_errors = net->stats.tx_errors;
 stats->rx_length_errors = net->stats.rx_length_errors;
 stats->rx_over_errors = net->stats.rx_over_errors;
 stats->rx_crc_errors = net->stats.rx_crc_errors;
 stats->rx_missed_errors = net->stats.rx_missed_errors;
}
