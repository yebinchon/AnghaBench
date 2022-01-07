
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int priv_flags; int features; int hw_features; int flags; int priv_destructor; int * ethtool_ops; int * netdev_ops; int max_mtu; } ;
struct bonding {struct net_device* dev; int params; int mode_lock; } ;


 int BOND_VLAN_FEATURES ;
 int ETH_MAX_MTU ;
 int IFF_BONDING ;
 int IFF_MASTER ;
 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 int IFF_UNICAST_FLT ;
 int IFF_XMIT_DST_RELEASE ;
 int NETIF_F_GSO_ENCAP_ALL ;
 int NETIF_F_GSO_UDP_L4 ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_HW_VLAN_STAG_TX ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int bond_destructor ;
 int bond_ethtool_ops ;
 int bond_netdev_ops ;
 int bond_type ;
 int bonding_defaults ;
 int ether_setup (struct net_device*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

void bond_setup(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);

 spin_lock_init(&bond->mode_lock);
 bond->params = bonding_defaults;


 bond->dev = bond_dev;


 ether_setup(bond_dev);
 bond_dev->max_mtu = ETH_MAX_MTU;
 bond_dev->netdev_ops = &bond_netdev_ops;
 bond_dev->ethtool_ops = &bond_ethtool_ops;

 bond_dev->needs_free_netdev = 1;
 bond_dev->priv_destructor = bond_destructor;

 SET_NETDEV_DEVTYPE(bond_dev, &bond_type);


 bond_dev->flags |= IFF_MASTER;
 bond_dev->priv_flags |= IFF_BONDING | IFF_UNICAST_FLT | IFF_NO_QUEUE;
 bond_dev->priv_flags &= ~(IFF_XMIT_DST_RELEASE | IFF_TX_SKB_SHARING);


 bond_dev->features |= NETIF_F_LLTX;
 bond_dev->features |= NETIF_F_NETNS_LOCAL;

 bond_dev->hw_features = BOND_VLAN_FEATURES |
    NETIF_F_HW_VLAN_CTAG_RX |
    NETIF_F_HW_VLAN_CTAG_FILTER;

 bond_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
 bond_dev->features |= bond_dev->hw_features;
 bond_dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
}
