
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u64 ;
struct rtnl_link_stats64 {int tx_compressed; int rx_compressed; int tx_window_errors; int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; int tx_aborted_errors; int rx_fifo_errors; int rx_frame_errors; int rx_over_errors; int collisions; int tx_dropped; int rx_dropped; int tx_errors; int rx_missed_errors; int rx_crc_errors; int rx_length_errors; int multicast; int rx_errors; void* rx_packets; void* rx_bytes; void* tx_packets; void* tx_bytes; } ;
struct TYPE_12__ {int tx_compressed; int rx_compressed; int tx_window_errors; int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; int tx_aborted_errors; int rx_fifo_errors; int rx_frame_errors; int rx_over_errors; int collisions; int tx_dropped; int rx_dropped; int tx_errors; int rx_missed_errors; int rx_crc_errors; int rx_length_errors; int multicast; int rx_errors; } ;
struct net_device {TYPE_6__ stats; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {int q_num; TYPE_5__** qs; } ;
struct TYPE_9__ {scalar_t__ rx_pkts; scalar_t__ rx_bytes; } ;
struct TYPE_10__ {TYPE_3__ stats; } ;
struct TYPE_7__ {scalar_t__ tx_pkts; scalar_t__ tx_bytes; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;
struct TYPE_11__ {TYPE_4__ rx_ring; TYPE_2__ tx_ring; } ;


 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hns_nic_get_stats64(struct net_device *ndev,
    struct rtnl_link_stats64 *stats)
{
 int idx = 0;
 u64 tx_bytes = 0;
 u64 rx_bytes = 0;
 u64 tx_pkts = 0;
 u64 rx_pkts = 0;
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;

 for (idx = 0; idx < h->q_num; idx++) {
  tx_bytes += h->qs[idx]->tx_ring.stats.tx_bytes;
  tx_pkts += h->qs[idx]->tx_ring.stats.tx_pkts;
  rx_bytes += h->qs[idx]->rx_ring.stats.rx_bytes;
  rx_pkts += h->qs[idx]->rx_ring.stats.rx_pkts;
 }

 stats->tx_bytes = tx_bytes;
 stats->tx_packets = tx_pkts;
 stats->rx_bytes = rx_bytes;
 stats->rx_packets = rx_pkts;

 stats->rx_errors = ndev->stats.rx_errors;
 stats->multicast = ndev->stats.multicast;
 stats->rx_length_errors = ndev->stats.rx_length_errors;
 stats->rx_crc_errors = ndev->stats.rx_crc_errors;
 stats->rx_missed_errors = ndev->stats.rx_missed_errors;

 stats->tx_errors = ndev->stats.tx_errors;
 stats->rx_dropped = ndev->stats.rx_dropped;
 stats->tx_dropped = ndev->stats.tx_dropped;
 stats->collisions = ndev->stats.collisions;
 stats->rx_over_errors = ndev->stats.rx_over_errors;
 stats->rx_frame_errors = ndev->stats.rx_frame_errors;
 stats->rx_fifo_errors = ndev->stats.rx_fifo_errors;
 stats->tx_aborted_errors = ndev->stats.tx_aborted_errors;
 stats->tx_carrier_errors = ndev->stats.tx_carrier_errors;
 stats->tx_fifo_errors = ndev->stats.tx_fifo_errors;
 stats->tx_heartbeat_errors = ndev->stats.tx_heartbeat_errors;
 stats->tx_window_errors = ndev->stats.tx_window_errors;
 stats->rx_compressed = ndev->stats.rx_compressed;
 stats->tx_compressed = ndev->stats.tx_compressed;
}
