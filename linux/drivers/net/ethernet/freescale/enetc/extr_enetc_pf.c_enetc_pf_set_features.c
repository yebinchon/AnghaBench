
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int hw; } ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_LOOPBACK ;
 int enetc_enable_rxvlan (int *,int ,int) ;
 int enetc_enable_txvlan (int *,int ,int) ;
 int enetc_set_features (struct net_device*,int) ;
 int enetc_set_loopback (struct net_device*,int) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_pf_set_features(struct net_device *ndev,
     netdev_features_t features)
{
 netdev_features_t changed = ndev->features ^ features;
 struct enetc_ndev_priv *priv = netdev_priv(ndev);

 if (changed & NETIF_F_HW_VLAN_CTAG_RX)
  enetc_enable_rxvlan(&priv->si->hw, 0,
        !!(features & NETIF_F_HW_VLAN_CTAG_RX));

 if (changed & NETIF_F_HW_VLAN_CTAG_TX)
  enetc_enable_txvlan(&priv->si->hw, 0,
        !!(features & NETIF_F_HW_VLAN_CTAG_TX));

 if (changed & NETIF_F_LOOPBACK)
  enetc_set_loopback(ndev, !!(features & NETIF_F_LOOPBACK));

 return enetc_set_features(ndev, features);
}
