
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hwtstamp_config {int dummy; } ;
struct igb_adapter {struct hwtstamp_config tstamp_config; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

int igb_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct hwtstamp_config *config = &adapter->tstamp_config;

 return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
  -EFAULT : 0;
}
