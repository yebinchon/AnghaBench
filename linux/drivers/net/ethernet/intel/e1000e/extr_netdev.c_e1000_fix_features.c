
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ mtu; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef int netdev_features_t ;


 scalar_t__ ETH_DATA_LEN ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXFCS ;
 scalar_t__ e1000_pch2lan ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t e1000_fix_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;


 if ((hw->mac.type >= e1000_pch2lan) && (netdev->mtu > ETH_DATA_LEN))
  features &= ~NETIF_F_RXFCS;




 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  features |= NETIF_F_HW_VLAN_CTAG_TX;
 else
  features &= ~NETIF_F_HW_VLAN_CTAG_TX;

 return features;
}
