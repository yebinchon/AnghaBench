
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int tstamp_config; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
typedef int config ;


 int EFAULT ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int igb_ptp_set_timestamp_mode (struct igb_adapter*,struct hwtstamp_config*) ;
 int memcpy (int *,struct hwtstamp_config*,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

int igb_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct hwtstamp_config config;
 int err;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 err = igb_ptp_set_timestamp_mode(adapter, &config);
 if (err)
  return err;


 memcpy(&adapter->tstamp_config, &config,
        sizeof(adapter->tstamp_config));

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
