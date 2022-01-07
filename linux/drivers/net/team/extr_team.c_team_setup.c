
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int priv_flags; int features; int hw_features; int priv_destructor; int * ethtool_ops; int * netdev_ops; int max_mtu; } ;


 int ETH_MAX_MTU ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_NO_QUEUE ;
 int IFF_TEAM ;
 int IFF_TX_SKB_SHARING ;
 int IFF_UNICAST_FLT ;
 int IFF_XMIT_DST_RELEASE ;
 int NETIF_F_GRO ;
 int NETIF_F_GSO_ENCAP_ALL ;
 int NETIF_F_GSO_UDP_L4 ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_HW_VLAN_STAG_TX ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int TEAM_VLAN_FEATURES ;
 int ether_setup (struct net_device*) ;
 int team_destructor ;
 int team_ethtool_ops ;
 int team_netdev_ops ;

__attribute__((used)) static void team_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->max_mtu = ETH_MAX_MTU;

 dev->netdev_ops = &team_netdev_ops;
 dev->ethtool_ops = &team_ethtool_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = team_destructor;
 dev->priv_flags &= ~(IFF_XMIT_DST_RELEASE | IFF_TX_SKB_SHARING);
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->priv_flags |= IFF_TEAM;






 dev->priv_flags |= IFF_UNICAST_FLT | IFF_LIVE_ADDR_CHANGE;

 dev->features |= NETIF_F_LLTX;
 dev->features |= NETIF_F_GRO;


 dev->features |= NETIF_F_NETNS_LOCAL;

 dev->hw_features = TEAM_VLAN_FEATURES |
      NETIF_F_HW_VLAN_CTAG_RX |
      NETIF_F_HW_VLAN_CTAG_FILTER;

 dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
 dev->features |= dev->hw_features;
 dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
}
