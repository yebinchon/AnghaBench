
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct e1000_adapter {int hwtstamp_config; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,int *,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000e_hwtstamp_get(struct net_device *netdev, struct ifreq *ifr)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 return copy_to_user(ifr->ifr_data, &adapter->hwtstamp_config,
       sizeof(adapter->hwtstamp_config)) ? -EFAULT : 0;
}
