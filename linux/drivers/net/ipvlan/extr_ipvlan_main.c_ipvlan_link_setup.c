
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int needs_free_netdev; int * ethtool_ops; int * header_ops; int * netdev_ops; int max_mtu; } ;


 int ETH_MAX_MTU ;
 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 int IFF_UNICAST_FLT ;
 int IFF_XMIT_DST_RELEASE ;
 int ether_setup (struct net_device*) ;
 int ipvlan_ethtool_ops ;
 int ipvlan_header_ops ;
 int ipvlan_netdev_ops ;

void ipvlan_link_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->max_mtu = ETH_MAX_MTU;
 dev->priv_flags &= ~(IFF_XMIT_DST_RELEASE | IFF_TX_SKB_SHARING);
 dev->priv_flags |= IFF_UNICAST_FLT | IFF_NO_QUEUE;
 dev->netdev_ops = &ipvlan_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->header_ops = &ipvlan_header_ops;
 dev->ethtool_ops = &ipvlan_ethtool_ops;
}
