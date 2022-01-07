
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct e1000_adapter {int itr_setting; } ;


 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_get_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *ec)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if (adapter->itr_setting <= 4)
  ec->rx_coalesce_usecs = adapter->itr_setting;
 else
  ec->rx_coalesce_usecs = 1000000 / adapter->itr_setting;

 return 0;
}
