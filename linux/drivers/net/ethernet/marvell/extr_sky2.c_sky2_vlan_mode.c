
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {int port; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int vlan_features; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int RX_GMF_CTRL_T ;
 int RX_VLAN_STRIP_OFF ;
 int RX_VLAN_STRIP_ON ;
 int SKY2_VLAN_OFFLOADS ;
 int SK_REG (int ,int ) ;
 int TX_GMF_CTRL_T ;
 int TX_VLAN_TAG_OFF ;
 int TX_VLAN_TAG_ON ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_vlan_mode(struct net_device *dev, netdev_features_t features)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 u16 port = sky2->port;

 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  sky2_write32(hw, SK_REG(port, RX_GMF_CTRL_T),
        RX_VLAN_STRIP_ON);
 else
  sky2_write32(hw, SK_REG(port, RX_GMF_CTRL_T),
        RX_VLAN_STRIP_OFF);

 if (features & NETIF_F_HW_VLAN_CTAG_TX) {
  sky2_write32(hw, SK_REG(port, TX_GMF_CTRL_T),
        TX_VLAN_TAG_ON);

  dev->vlan_features |= SKY2_VLAN_OFFLOADS;
 } else {
  sky2_write32(hw, SK_REG(port, TX_GMF_CTRL_T),
        TX_VLAN_TAG_OFF);


  dev->vlan_features &= ~SKY2_VLAN_OFFLOADS;
 }
}
