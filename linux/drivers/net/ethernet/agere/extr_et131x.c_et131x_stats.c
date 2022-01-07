
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int rx_dropped; scalar_t__ rx_crc_errors; int rx_over_errors; scalar_t__ rx_length_errors; int collisions; int multicast; int tx_errors; scalar_t__ rx_errors; } ;
struct net_device {int dummy; } ;
struct ce_stats {int rcvd_pkts_dropped; scalar_t__ rx_crc_errs; int rx_overflows; scalar_t__ rx_length_errs; int tx_collisions; int multicast_pkts_rcvd; int tx_max_pkt_errs; scalar_t__ rx_other_errs; scalar_t__ rx_code_violations; scalar_t__ rx_align_errs; } ;
struct et131x_adapter {struct ce_stats stats; TYPE_1__* netdev; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;


 struct et131x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *et131x_stats(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 struct net_device_stats *stats = &adapter->netdev->stats;
 struct ce_stats *devstat = &adapter->stats;

 stats->rx_errors = devstat->rx_length_errs +
      devstat->rx_align_errs +
      devstat->rx_crc_errs +
      devstat->rx_code_violations +
      devstat->rx_other_errs;
 stats->tx_errors = devstat->tx_max_pkt_errs;
 stats->multicast = devstat->multicast_pkts_rcvd;
 stats->collisions = devstat->tx_collisions;

 stats->rx_length_errors = devstat->rx_length_errs;
 stats->rx_over_errors = devstat->rx_overflows;
 stats->rx_crc_errors = devstat->rx_crc_errs;
 stats->rx_dropped = devstat->rcvd_pkts_dropped;
 return stats;
}
