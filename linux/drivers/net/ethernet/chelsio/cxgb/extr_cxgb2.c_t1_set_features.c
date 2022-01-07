
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; struct adapter* ml_priv; } ;
struct adapter {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int t1_vlan_mode (struct adapter*,int) ;

__attribute__((used)) static int t1_set_features(struct net_device *dev, netdev_features_t features)
{
 netdev_features_t changed = dev->features ^ features;
 struct adapter *adapter = dev->ml_priv;

 if (changed & NETIF_F_HW_VLAN_CTAG_RX)
  t1_vlan_mode(adapter, features);

 return 0;
}
