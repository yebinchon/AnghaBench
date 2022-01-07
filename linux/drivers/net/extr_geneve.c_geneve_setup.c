
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int features; int hw_features; int priv_flags; scalar_t__ hard_header_len; scalar_t__ max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; } ;


 int ETH_MIN_MTU ;
 scalar_t__ GENEVE_BASE_HLEN ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 scalar_t__ IP_MAX_MTU ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int geneve_ethtool_ops ;
 int geneve_netdev_ops ;
 int geneve_type ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void geneve_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->netdev_ops = &geneve_netdev_ops;
 dev->ethtool_ops = &geneve_ethtool_ops;
 dev->needs_free_netdev = 1;

 SET_NETDEV_DEVTYPE(dev, &geneve_type);

 dev->features |= NETIF_F_LLTX;
 dev->features |= NETIF_F_SG | NETIF_F_HW_CSUM;
 dev->features |= NETIF_F_RXCSUM;
 dev->features |= NETIF_F_GSO_SOFTWARE;

 dev->hw_features |= NETIF_F_SG | NETIF_F_HW_CSUM | NETIF_F_RXCSUM;
 dev->hw_features |= NETIF_F_GSO_SOFTWARE;


 dev->min_mtu = ETH_MIN_MTU;




 dev->max_mtu = IP_MAX_MTU - GENEVE_BASE_HLEN - dev->hard_header_len;

 netif_keep_dst(dev);
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE | IFF_NO_QUEUE;
 eth_hw_addr_random(dev);
}
