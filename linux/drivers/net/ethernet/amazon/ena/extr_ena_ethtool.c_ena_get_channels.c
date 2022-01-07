
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; int tx_count; int rx_count; scalar_t__ max_combined; scalar_t__ max_other; int max_tx; int max_rx; } ;
struct ena_adapter {int num_queues; } ;


 struct ena_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ena_get_channels(struct net_device *netdev,
        struct ethtool_channels *channels)
{
 struct ena_adapter *adapter = netdev_priv(netdev);

 channels->max_rx = adapter->num_queues;
 channels->max_tx = adapter->num_queues;
 channels->max_other = 0;
 channels->max_combined = 0;
 channels->rx_count = adapter->num_queues;
 channels->tx_count = adapter->num_queues;
 channels->other_count = 0;
 channels->combined_count = 0;
}
