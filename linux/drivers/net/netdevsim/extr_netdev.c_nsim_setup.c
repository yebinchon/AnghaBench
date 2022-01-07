
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int features; int max_mtu; int hw_features; int flags; scalar_t__ tx_queue_len; } ;


 int ETH_MAX_MTU ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_TC ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;

__attribute__((used)) static void nsim_setup(struct net_device *dev)
{
 ether_setup(dev);
 eth_hw_addr_random(dev);

 dev->tx_queue_len = 0;
 dev->flags |= IFF_NOARP;
 dev->flags &= ~IFF_MULTICAST;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE |
      IFF_NO_QUEUE;
 dev->features |= NETIF_F_HIGHDMA |
    NETIF_F_SG |
    NETIF_F_FRAGLIST |
    NETIF_F_HW_CSUM |
    NETIF_F_TSO;
 dev->hw_features |= NETIF_F_HW_TC;
 dev->max_mtu = ETH_MAX_MTU;
}
