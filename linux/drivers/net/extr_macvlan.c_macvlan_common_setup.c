
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int * ethtool_ops; int * header_ops; int * netdev_ops; int priv_flags; int max_mtu; scalar_t__ min_mtu; } ;


 int ETH_MAX_MTU ;
 int IFF_TX_SKB_SHARING ;
 int IFF_UNICAST_FLT ;
 int ether_setup (struct net_device*) ;
 int macvlan_ethtool_ops ;
 int macvlan_hard_header_ops ;
 int macvlan_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

void macvlan_common_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->min_mtu = 0;
 dev->max_mtu = ETH_MAX_MTU;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 netif_keep_dst(dev);
 dev->priv_flags |= IFF_UNICAST_FLT;
 dev->netdev_ops = &macvlan_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->header_ops = &macvlan_hard_header_ops;
 dev->ethtool_ops = &macvlan_ethtool_ops;
}
