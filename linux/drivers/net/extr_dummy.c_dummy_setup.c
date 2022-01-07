
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int priv_flags; int features; int hw_features; int hw_enc_features; scalar_t__ max_mtu; scalar_t__ min_mtu; int flags; int * ethtool_ops; int * netdev_ops; } ;


 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int NETIF_F_ALL_TSO ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_GSO_ENCAP_ALL ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_SG ;
 int dummy_ethtool_ops ;
 int dummy_netdev_ops ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;

__attribute__((used)) static void dummy_setup(struct net_device *dev)
{
 ether_setup(dev);


 dev->netdev_ops = &dummy_netdev_ops;
 dev->ethtool_ops = &dummy_ethtool_ops;
 dev->needs_free_netdev = 1;


 dev->flags |= IFF_NOARP;
 dev->flags &= ~IFF_MULTICAST;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE | IFF_NO_QUEUE;
 dev->features |= NETIF_F_SG | NETIF_F_FRAGLIST;
 dev->features |= NETIF_F_ALL_TSO;
 dev->features |= NETIF_F_HW_CSUM | NETIF_F_HIGHDMA | NETIF_F_LLTX;
 dev->features |= NETIF_F_GSO_ENCAP_ALL;
 dev->hw_features |= dev->features;
 dev->hw_enc_features |= dev->features;
 eth_hw_addr_random(dev);

 dev->min_mtu = 0;
 dev->max_mtu = 0;
}
