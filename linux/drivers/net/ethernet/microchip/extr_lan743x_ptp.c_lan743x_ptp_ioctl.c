
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan743x_adapter {int netdev; int * tx; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int flags; int tx_type; } ;
typedef int config ;


 int EFAULT ;
 int EINVAL ;



 int LAN743X_MAX_TX_CHANNELS ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int drv ;
 int lan743x_ptp_set_sync_ts_insert (struct lan743x_adapter*,int) ;
 int lan743x_tx_set_timestamping_mode (int *,int,int) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;
 int netif_warn (struct lan743x_adapter*,int ,int ,char*,int) ;

int lan743x_ptp_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);
 struct hwtstamp_config config;
 int ret = 0;
 int index;

 if (!ifr) {
  netif_err(adapter, drv, adapter->netdev,
     "SIOCSHWTSTAMP, ifr == NULL\n");
  return -EINVAL;
 }

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 if (config.flags) {
  netif_warn(adapter, drv, adapter->netdev,
      "ignoring hwtstamp_config.flags == 0x%08X, expected 0\n",
      config.flags);
 }

 switch (config.tx_type) {
 case 130:
  for (index = 0; index < LAN743X_MAX_TX_CHANNELS;
   index++)
   lan743x_tx_set_timestamping_mode(&adapter->tx[index],
        0, 0);
  lan743x_ptp_set_sync_ts_insert(adapter, 0);
  break;
 case 129:
  for (index = 0; index < LAN743X_MAX_TX_CHANNELS;
   index++)
   lan743x_tx_set_timestamping_mode(&adapter->tx[index],
        1, 0);
  lan743x_ptp_set_sync_ts_insert(adapter, 0);
  break;
 case 128:
  for (index = 0; index < LAN743X_MAX_TX_CHANNELS;
   index++)
   lan743x_tx_set_timestamping_mode(&adapter->tx[index],
        1, 1);

  lan743x_ptp_set_sync_ts_insert(adapter, 1);
  break;
 default:
  netif_warn(adapter, drv, adapter->netdev,
      "  tx_type = %d, UNKNOWN\n", config.tx_type);
  ret = -EINVAL;
  break;
 }

 if (!ret)
  return copy_to_user(ifr->ifr_data, &config,
   sizeof(config)) ? -EFAULT : 0;
 return ret;
}
