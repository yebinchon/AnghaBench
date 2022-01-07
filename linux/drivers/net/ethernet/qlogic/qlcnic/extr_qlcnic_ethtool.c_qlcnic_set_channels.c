
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; int drv_tx_rings; int drv_sds_rings; int drv_tss_rings; int drv_rss_rings; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int tx_count; int rx_count; scalar_t__ combined_count; scalar_t__ other_count; } ;


 int EINVAL ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCNIC_RX_QUEUE ;
 int QLCNIC_TSS_RSS ;
 int QLCNIC_TX_QUEUE ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*,int ,int ) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_setup_rings (struct qlcnic_adapter*) ;
 int qlcnic_validate_ring_count (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_validate_rings (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static int qlcnic_set_channels(struct net_device *dev,
          struct ethtool_channels *channel)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 int err;

 if (!(adapter->flags & QLCNIC_MSIX_ENABLED)) {
  netdev_err(dev, "No RSS/TSS support in non MSI-X mode\n");
  return -EINVAL;
 }

 if (channel->other_count || channel->combined_count)
  return -EINVAL;

 err = qlcnic_validate_ring_count(adapter, channel->rx_count,
      channel->tx_count);
 if (err)
  return err;

 if (adapter->drv_sds_rings != channel->rx_count) {
  err = qlcnic_validate_rings(adapter, channel->rx_count,
         QLCNIC_RX_QUEUE);
  if (err) {
   netdev_err(dev, "Unable to configure %u SDS rings\n",
       channel->rx_count);
   return err;
  }
  adapter->drv_rss_rings = channel->rx_count;
 }

 if (adapter->drv_tx_rings != channel->tx_count) {
  err = qlcnic_validate_rings(adapter, channel->tx_count,
         QLCNIC_TX_QUEUE);
  if (err) {
   netdev_err(dev, "Unable to configure %u Tx rings\n",
       channel->tx_count);
   return err;
  }
  adapter->drv_tss_rings = channel->tx_count;
 }

 adapter->flags |= QLCNIC_TSS_RSS;

 err = qlcnic_setup_rings(adapter);
 netdev_info(dev, "Allocated %d SDS rings and %d Tx rings\n",
      adapter->drv_sds_rings, adapter->drv_tx_rings);

 return err;
}
