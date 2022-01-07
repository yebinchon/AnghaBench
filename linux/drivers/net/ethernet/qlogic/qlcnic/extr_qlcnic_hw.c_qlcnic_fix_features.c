
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int QLCNIC_APP_CHANGED_FLAGS ;
 int QLCNIC_ESWITCH_ENABLED ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_process_flags (struct qlcnic_adapter*,int) ;

netdev_features_t qlcnic_fix_features(struct net_device *netdev,
 netdev_features_t features)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 netdev_features_t changed;

 if (qlcnic_82xx_check(adapter) &&
     (adapter->flags & QLCNIC_ESWITCH_ENABLED)) {
  if (adapter->flags & QLCNIC_APP_CHANGED_FLAGS) {
   features = qlcnic_process_flags(adapter, features);
  } else {
   changed = features ^ netdev->features;
   features ^= changed & (NETIF_F_RXCSUM |
            NETIF_F_IP_CSUM |
            NETIF_F_IPV6_CSUM |
            NETIF_F_TSO |
            NETIF_F_TSO6);
  }
 }

 if (!(features & NETIF_F_RXCSUM))
  features &= ~NETIF_F_LRO;

 return features;
}
