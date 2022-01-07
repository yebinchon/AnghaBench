
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int rx_filter; } ;
struct e1000_adapter {int dummy; } ;
typedef int config ;


 int EFAULT ;






 int HWTSTAMP_FILTER_SOME ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int e1000e_config_hwtstamp (struct e1000_adapter*,struct hwtstamp_config*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct hwtstamp_config config;
 int ret_val;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 ret_val = e1000e_config_hwtstamp(adapter, &config);
 if (ret_val)
  return ret_val;

 switch (config.rx_filter) {
 case 129:
 case 131:
 case 128:
 case 130:
 case 132:
 case 133:





  config.rx_filter = HWTSTAMP_FILTER_SOME;
  break;
 default:
  break;
 }

 return copy_to_user(ifr->ifr_data, &config,
       sizeof(config)) ? -EFAULT : 0;
}
