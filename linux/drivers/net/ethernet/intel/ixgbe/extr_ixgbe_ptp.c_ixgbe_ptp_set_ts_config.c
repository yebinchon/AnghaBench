
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int tstamp_config; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
typedef int config ;


 int EFAULT ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int ixgbe_ptp_set_timestamp_mode (struct ixgbe_adapter*,struct hwtstamp_config*) ;
 int memcpy (int *,struct hwtstamp_config*,int) ;

int ixgbe_ptp_set_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr)
{
 struct hwtstamp_config config;
 int err;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 err = ixgbe_ptp_set_timestamp_mode(adapter, &config);
 if (err)
  return err;


 memcpy(&adapter->tstamp_config, &config,
        sizeof(adapter->tstamp_config));

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
