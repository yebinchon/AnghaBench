
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_dropped; int rx_dropped; int tx_bytes; int rx_bytes; int tx_packets; scalar_t__ rx_packets; } ;
struct TYPE_2__ {int txdropped; int rxdropped; int txbytes; int rxbytes; int xmitfinished; scalar_t__ lro_pkts; scalar_t__ rx_pkts; } ;
struct netxen_adapter {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;


 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netxen_nic_get_stats(struct net_device *netdev,
     struct rtnl_link_stats64 *stats)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);

 stats->rx_packets = adapter->stats.rx_pkts + adapter->stats.lro_pkts;
 stats->tx_packets = adapter->stats.xmitfinished;
 stats->rx_bytes = adapter->stats.rxbytes;
 stats->tx_bytes = adapter->stats.txbytes;
 stats->rx_dropped = adapter->stats.rxdropped;
 stats->tx_dropped = adapter->stats.txdropped;
}
