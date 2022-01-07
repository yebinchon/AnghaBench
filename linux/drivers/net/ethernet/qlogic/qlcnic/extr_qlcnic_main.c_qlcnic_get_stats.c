
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txdropped; int rxdropped; int txbytes; scalar_t__ lrobytes; scalar_t__ rxbytes; int xmitfinished; scalar_t__ lro_pkts; scalar_t__ rx_pkts; } ;
struct qlcnic_adapter {TYPE_1__ stats; int state; } ;
struct net_device_stats {int tx_dropped; int rx_dropped; int tx_bytes; scalar_t__ rx_bytes; int tx_packets; scalar_t__ rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;


 int __QLCNIC_DEV_UP ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_update_stats (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct net_device_stats *qlcnic_get_stats(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct net_device_stats *stats = &netdev->stats;

 if (test_bit(__QLCNIC_DEV_UP, &adapter->state))
  qlcnic_update_stats(adapter);

 stats->rx_packets = adapter->stats.rx_pkts + adapter->stats.lro_pkts;
 stats->tx_packets = adapter->stats.xmitfinished;
 stats->rx_bytes = adapter->stats.rxbytes + adapter->stats.lrobytes;
 stats->tx_bytes = adapter->stats.txbytes;
 stats->rx_dropped = adapter->stats.rxdropped;
 stats->tx_dropped = adapter->stats.txdropped;

 return stats;
}
