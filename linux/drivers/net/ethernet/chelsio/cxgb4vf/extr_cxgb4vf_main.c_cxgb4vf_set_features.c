
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int viid; int adapter; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4vf_set_rxmode (int ,int ,int,int,int,int,int,int ) ;

__attribute__((used)) static int cxgb4vf_set_features(struct net_device *dev,
 netdev_features_t features)
{
 struct port_info *pi = netdev_priv(dev);
 netdev_features_t changed = dev->features ^ features;

 if (changed & NETIF_F_HW_VLAN_CTAG_RX)
  t4vf_set_rxmode(pi->adapter, pi->viid, -1, -1, -1, -1,
    features & NETIF_F_HW_VLAN_CTAG_TX, 0);

 return 0;
}
