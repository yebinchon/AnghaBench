
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int drv_tx_rings; int drv_sds_rings; int max_tx_rings; int max_sds_rings; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int tx_count; int rx_count; int max_tx; int max_rx; } ;


 struct qlcnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void qlcnic_get_channels(struct net_device *dev,
  struct ethtool_channels *channel)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 channel->max_rx = adapter->max_sds_rings;
 channel->max_tx = adapter->max_tx_rings;
 channel->rx_count = adapter->drv_sds_rings;
 channel->tx_count = adapter->drv_tx_rings;
}
