
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int hw_rx_tstamp; int ptp_clock; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int config ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int ERANGE ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int nicvf_config_hw_rx_tstamp (struct nicvf*,int) ;

__attribute__((used)) static int nicvf_config_hwtstamp(struct net_device *netdev, struct ifreq *ifr)
{
 struct hwtstamp_config config;
 struct nicvf *nic = netdev_priv(netdev);

 if (!nic->ptp_clock)
  return -ENODEV;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;


 if (config.flags)
  return -EINVAL;

 switch (config.tx_type) {
 case 129:
 case 128:
  break;
 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 143:
  nic->hw_rx_tstamp = 0;
  break;
 case 144:
 case 130:
 case 141:
 case 140:
 case 142:
 case 133:
 case 132:
 case 134:
 case 136:
 case 135:
 case 137:
 case 138:
 case 131:
 case 139:
  nic->hw_rx_tstamp = 1;
  config.rx_filter = 144;
  break;
 default:
  return -ERANGE;
 }

 if (netif_running(netdev))
  nicvf_config_hw_rx_tstamp(nic, nic->hw_rx_tstamp);

 if (copy_to_user(ifr->ifr_data, &config, sizeof(config)))
  return -EFAULT;

 return 0;
}
