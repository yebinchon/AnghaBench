
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtnl_link_stats64 {int rx_frame_errors; int rx_crc_errors; int collisions; int rx_fifo_errors; scalar_t__ multicast; int tx_errors; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct qede_stats_common {int rx_align_errors; int rx_crc_errors; int no_buff_discards; scalar_t__ rx_bcast_pkts; scalar_t__ rx_mcast_pkts; int tx_err_drop_pkts; scalar_t__ tx_bcast_bytes; scalar_t__ tx_mcast_bytes; scalar_t__ tx_ucast_bytes; scalar_t__ rx_bcast_bytes; scalar_t__ rx_mcast_bytes; scalar_t__ rx_ucast_bytes; scalar_t__ tx_bcast_pkts; scalar_t__ tx_mcast_pkts; scalar_t__ tx_ucast_pkts; scalar_t__ rx_ucast_pkts; } ;
struct TYPE_3__ {int tx_total_collisions; } ;
struct TYPE_4__ {TYPE_1__ bb; struct qede_stats_common common; } ;
struct qede_dev {TYPE_2__ stats; } ;
struct net_device {int dummy; } ;


 scalar_t__ QEDE_IS_BB (struct qede_dev*) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_fill_by_demand_stats (struct qede_dev*) ;

__attribute__((used)) static void qede_get_stats64(struct net_device *dev,
        struct rtnl_link_stats64 *stats)
{
 struct qede_dev *edev = netdev_priv(dev);
 struct qede_stats_common *p_common;

 qede_fill_by_demand_stats(edev);
 p_common = &edev->stats.common;

 stats->rx_packets = p_common->rx_ucast_pkts + p_common->rx_mcast_pkts +
       p_common->rx_bcast_pkts;
 stats->tx_packets = p_common->tx_ucast_pkts + p_common->tx_mcast_pkts +
       p_common->tx_bcast_pkts;

 stats->rx_bytes = p_common->rx_ucast_bytes + p_common->rx_mcast_bytes +
     p_common->rx_bcast_bytes;
 stats->tx_bytes = p_common->tx_ucast_bytes + p_common->tx_mcast_bytes +
     p_common->tx_bcast_bytes;

 stats->tx_errors = p_common->tx_err_drop_pkts;
 stats->multicast = p_common->rx_mcast_pkts + p_common->rx_bcast_pkts;

 stats->rx_fifo_errors = p_common->no_buff_discards;

 if (QEDE_IS_BB(edev))
  stats->collisions = edev->stats.bb.tx_total_collisions;
 stats->rx_crc_errors = p_common->rx_crc_errors;
 stats->rx_frame_errors = p_common->rx_align_errors;
}
