
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int priv_flags; } ;


 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_TX_SKB_SHARING ;
 int vxlan_netdev_ether_ops ;

__attribute__((used)) static void vxlan_ether_setup(struct net_device *dev)
{
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 dev->netdev_ops = &vxlan_netdev_ether_ops;
}
