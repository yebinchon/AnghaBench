
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int features; int hw_features; int hw_enc_features; int max_mtu; int min_mtu; int priv_flags; int * ethtool_ops; int * l3mdev_ops; int * netdev_ops; } ;


 int ETH_MAX_MTU ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_NO_QUEUE ;
 int IFF_NO_RX_HANDLER ;
 int IPV6_MIN_MTU ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SCTP_CRC ;
 int NETIF_F_SG ;
 int NETIF_F_VLAN_CHALLENGED ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int vrf_ethtool_ops ;
 int vrf_l3mdev_ops ;
 int vrf_netdev_ops ;

__attribute__((used)) static void vrf_setup(struct net_device *dev)
{
 ether_setup(dev);


 dev->netdev_ops = &vrf_netdev_ops;
 dev->l3mdev_ops = &vrf_l3mdev_ops;
 dev->ethtool_ops = &vrf_ethtool_ops;
 dev->needs_free_netdev = 1;


 eth_hw_addr_random(dev);


 dev->features |= NETIF_F_LLTX;


 dev->features |= NETIF_F_NETNS_LOCAL;


 dev->features |= NETIF_F_VLAN_CHALLENGED;


 dev->features |= NETIF_F_GSO_SOFTWARE;
 dev->features |= NETIF_F_RXCSUM | NETIF_F_HW_CSUM | NETIF_F_SCTP_CRC;
 dev->features |= NETIF_F_SG | NETIF_F_FRAGLIST | NETIF_F_HIGHDMA;

 dev->hw_features = dev->features;
 dev->hw_enc_features = dev->features;


 dev->priv_flags |= IFF_NO_QUEUE;
 dev->priv_flags |= IFF_NO_RX_HANDLER;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;





 dev->min_mtu = IPV6_MIN_MTU;
 dev->max_mtu = ETH_MAX_MTU;
}
