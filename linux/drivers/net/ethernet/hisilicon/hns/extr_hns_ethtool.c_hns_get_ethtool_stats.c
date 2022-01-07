
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct rtnl_link_stats64 {int tx_compressed; int rx_compressed; int tx_window_errors; int rx_length_errors; int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; int tx_aborted_errors; int rx_missed_errors; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_over_errors; int collisions; int multicast; int tx_dropped; int rx_dropped; int tx_errors; int rx_errors; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct TYPE_6__ {int counter; } ;
struct TYPE_5__ {int counter; } ;
struct net_device {TYPE_2__ tx_dropped; TYPE_1__ rx_dropped; int stats; } ;
struct hns_nic_priv {int tx_timeout_count; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_4__* dev; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* get_stats ) (struct hnae_handle*,int *) ;int (* update_stats ) (struct hnae_handle*,int *) ;} ;


 struct rtnl_link_stats64* dev_get_stats (struct net_device*,struct rtnl_link_stats64*) ;
 int netdev_err (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,int *) ;
 int stub2 (struct hnae_handle*,int *) ;

__attribute__((used)) static void hns_get_ethtool_stats(struct net_device *netdev,
      struct ethtool_stats *stats, u64 *data)
{
 u64 *p = data;
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_handle *h = priv->ae_handle;
 const struct rtnl_link_stats64 *net_stats;
 struct rtnl_link_stats64 temp;

 if (!h->dev->ops->get_stats || !h->dev->ops->update_stats) {
  netdev_err(netdev, "get_stats or update_stats is null!\n");
  return;
 }

 h->dev->ops->update_stats(h, &netdev->stats);

 net_stats = dev_get_stats(netdev, &temp);


 p[0] = net_stats->rx_packets;
 p[1] = net_stats->tx_packets;
 p[2] = net_stats->rx_bytes;
 p[3] = net_stats->tx_bytes;
 p[4] = net_stats->rx_errors;
 p[5] = net_stats->tx_errors;
 p[6] = net_stats->rx_dropped;
 p[7] = net_stats->tx_dropped;
 p[8] = net_stats->multicast;
 p[9] = net_stats->collisions;
 p[10] = net_stats->rx_over_errors;
 p[11] = net_stats->rx_crc_errors;
 p[12] = net_stats->rx_frame_errors;
 p[13] = net_stats->rx_fifo_errors;
 p[14] = net_stats->rx_missed_errors;
 p[15] = net_stats->tx_aborted_errors;
 p[16] = net_stats->tx_carrier_errors;
 p[17] = net_stats->tx_fifo_errors;
 p[18] = net_stats->tx_heartbeat_errors;
 p[19] = net_stats->rx_length_errors;
 p[20] = net_stats->tx_window_errors;
 p[21] = net_stats->rx_compressed;
 p[22] = net_stats->tx_compressed;

 p[23] = netdev->rx_dropped.counter;
 p[24] = netdev->tx_dropped.counter;

 p[25] = priv->tx_timeout_count;


 h->dev->ops->get_stats(h, &p[26]);
}
