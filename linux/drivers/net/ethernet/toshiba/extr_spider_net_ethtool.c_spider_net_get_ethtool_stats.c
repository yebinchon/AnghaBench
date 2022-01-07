
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int rx_desc_unk_state; int tx_iommu_map_error; int rx_iommu_map_error; int alloc_rx_skb_error; int tx_timeouts; int rx_desc_error; } ;
struct spider_net_card {TYPE_2__ spider_stats; } ;
struct TYPE_3__ {int rx_dropped; int tx_dropped; int tx_errors; int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ethtool_stats {int dummy; } ;


 struct spider_net_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static void spider_net_get_ethtool_stats(struct net_device *netdev,
  struct ethtool_stats *stats, u64 *data)
{
 struct spider_net_card *card = netdev_priv(netdev);

 data[0] = netdev->stats.tx_packets;
 data[1] = netdev->stats.tx_bytes;
 data[2] = netdev->stats.rx_packets;
 data[3] = netdev->stats.rx_bytes;
 data[4] = netdev->stats.tx_errors;
 data[5] = netdev->stats.tx_dropped;
 data[6] = netdev->stats.rx_dropped;
 data[7] = card->spider_stats.rx_desc_error;
 data[8] = card->spider_stats.tx_timeouts;
 data[9] = card->spider_stats.alloc_rx_skb_error;
 data[10] = card->spider_stats.rx_iommu_map_error;
 data[11] = card->spider_stats.tx_iommu_map_error;
 data[12] = card->spider_stats.rx_desc_unk_state;
}
