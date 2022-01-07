
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int hw_enc_features; int vlan_features; int hw_features; int max_mtu; int min_mtu; int priv_flags; int * netdev_ops; } ;
struct fm10k_intfc {scalar_t__ msg_enable; } ;
struct fm10k_info {scalar_t__ mac; } ;
typedef int netdev_features_t ;


 scalar_t__ BIT (int ) ;
 int DEFAULT_DEBUG_LEVEL_SHIFT ;
 int ETH_MIN_MTU ;
 int FM10K_MAX_JUMBO_FRAME_SIZE ;
 int IFF_UNICAST_FLT ;
 int MAX_QUEUES ;
 int NETIF_F_GSO_UDP_TUNNEL ;
 int NETIF_F_HW_L2FW_DOFFLOAD ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_ECN ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_netdev_ops ;
 int fm10k_set_ethtool_ops (struct net_device*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

struct net_device *fm10k_alloc_netdev(const struct fm10k_info *info)
{
 netdev_features_t hw_features;
 struct fm10k_intfc *interface;
 struct net_device *dev;

 dev = alloc_etherdev_mq(sizeof(struct fm10k_intfc), MAX_QUEUES);
 if (!dev)
  return ((void*)0);


 dev->netdev_ops = &fm10k_netdev_ops;
 fm10k_set_ethtool_ops(dev);


 interface = netdev_priv(dev);
 interface->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;


 dev->features |= NETIF_F_IP_CSUM |
    NETIF_F_IPV6_CSUM |
    NETIF_F_SG |
    NETIF_F_TSO |
    NETIF_F_TSO6 |
    NETIF_F_TSO_ECN |
    NETIF_F_RXHASH |
    NETIF_F_RXCSUM;


 if (info->mac == fm10k_mac_pf) {
  dev->hw_enc_features = NETIF_F_IP_CSUM |
           NETIF_F_TSO |
           NETIF_F_TSO6 |
           NETIF_F_TSO_ECN |
           NETIF_F_GSO_UDP_TUNNEL |
           NETIF_F_IPV6_CSUM |
           NETIF_F_SG;

  dev->features |= NETIF_F_GSO_UDP_TUNNEL;
 }


 hw_features = dev->features;


 hw_features |= NETIF_F_HW_L2FW_DOFFLOAD;


 dev->vlan_features |= dev->features;





 dev->features |= NETIF_F_HW_VLAN_CTAG_TX |
    NETIF_F_HW_VLAN_CTAG_RX |
    NETIF_F_HW_VLAN_CTAG_FILTER;

 dev->priv_flags |= IFF_UNICAST_FLT;

 dev->hw_features |= hw_features;


 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = FM10K_MAX_JUMBO_FRAME_SIZE;

 return dev;
}
