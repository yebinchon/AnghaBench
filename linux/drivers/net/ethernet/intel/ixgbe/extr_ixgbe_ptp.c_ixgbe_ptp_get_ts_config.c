
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwtstamp_config {int dummy; } ;
struct ixgbe_adapter {struct hwtstamp_config tstamp_config; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;

int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr)
{
 struct hwtstamp_config *config = &adapter->tstamp_config;

 return copy_to_user(ifr->ifr_data, config,
       sizeof(*config)) ? -EFAULT : 0;
}
