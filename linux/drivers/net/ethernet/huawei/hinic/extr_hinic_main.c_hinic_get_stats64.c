
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int tx_errors; int tx_packets; int tx_bytes; int rx_errors; int rx_packets; int rx_bytes; } ;
struct net_device {int dummy; } ;
struct hinic_txq_stats {int tx_dropped; int pkts; int bytes; } ;
struct hinic_rxq_stats {int errors; int pkts; int bytes; } ;
struct hinic_dev {int flags; int mgmt_lock; struct hinic_txq_stats tx_stats; struct hinic_rxq_stats rx_stats; } ;


 int HINIC_INTF_UP ;
 int down (int *) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int up (int *) ;
 int update_nic_stats (struct hinic_dev*) ;

__attribute__((used)) static void hinic_get_stats64(struct net_device *netdev,
         struct rtnl_link_stats64 *stats)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 struct hinic_rxq_stats *nic_rx_stats;
 struct hinic_txq_stats *nic_tx_stats;

 nic_rx_stats = &nic_dev->rx_stats;
 nic_tx_stats = &nic_dev->tx_stats;

 down(&nic_dev->mgmt_lock);

 if (nic_dev->flags & HINIC_INTF_UP)
  update_nic_stats(nic_dev);

 up(&nic_dev->mgmt_lock);

 stats->rx_bytes = nic_rx_stats->bytes;
 stats->rx_packets = nic_rx_stats->pkts;
 stats->rx_errors = nic_rx_stats->errors;

 stats->tx_bytes = nic_tx_stats->bytes;
 stats->tx_packets = nic_tx_stats->pkts;
 stats->tx_errors = nic_tx_stats->tx_dropped;
}
