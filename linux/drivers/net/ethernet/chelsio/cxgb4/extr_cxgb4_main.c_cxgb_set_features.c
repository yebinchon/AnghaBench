
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {int viid; TYPE_1__* adapter; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int pf; } ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_set_rxmode (TYPE_1__*,int ,int ,int,int,int,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cxgb_set_features(struct net_device *dev, netdev_features_t features)
{
 const struct port_info *pi = netdev_priv(dev);
 netdev_features_t changed = dev->features ^ features;
 int err;

 if (!(changed & NETIF_F_HW_VLAN_CTAG_RX))
  return 0;

 err = t4_set_rxmode(pi->adapter, pi->adapter->pf, pi->viid, -1,
       -1, -1, -1,
       !!(features & NETIF_F_HW_VLAN_CTAG_RX), 1);
 if (unlikely(err))
  dev->features = features ^ NETIF_F_HW_VLAN_CTAG_RX;
 return err;
}
