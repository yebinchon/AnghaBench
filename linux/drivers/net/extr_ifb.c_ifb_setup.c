
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int hw_features; int hw_enc_features; int vlan_features; int needs_free_netdev; scalar_t__ max_mtu; scalar_t__ min_mtu; int priv_destructor; int priv_flags; int flags; int tx_queue_len; int * netdev_ops; } ;


 int IFB_FEATURES ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_TX_SKB_SHARING ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_HW_VLAN_STAG_TX ;
 int TX_Q_LIMIT ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int ifb_dev_free ;
 int ifb_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void ifb_setup(struct net_device *dev)
{

 dev->netdev_ops = &ifb_netdev_ops;


 ether_setup(dev);
 dev->tx_queue_len = TX_Q_LIMIT;

 dev->features |= IFB_FEATURES;
 dev->hw_features |= dev->features;
 dev->hw_enc_features |= dev->features;
 dev->vlan_features |= IFB_FEATURES & ~(NETIF_F_HW_VLAN_CTAG_TX |
            NETIF_F_HW_VLAN_STAG_TX);

 dev->flags |= IFF_NOARP;
 dev->flags &= ~IFF_MULTICAST;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 netif_keep_dst(dev);
 eth_hw_addr_random(dev);
 dev->needs_free_netdev = 1;
 dev->priv_destructor = ifb_dev_free;

 dev->min_mtu = 0;
 dev->max_mtu = 0;
}
