
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; int flags; } ;
struct atl1e_hw {scalar_t__ preamble_len; } ;
struct atl1e_adapter {scalar_t__ link_duplex; scalar_t__ link_speed; struct atl1e_hw hw; struct net_device* netdev; } ;


 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 scalar_t__ FULL_DUPLEX ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CTRL_ADD_CRC ;
 int MAC_CTRL_BC_EN ;
 int MAC_CTRL_DBG ;
 int MAC_CTRL_DUPLX ;
 int MAC_CTRL_MC_ALL_EN ;
 int MAC_CTRL_PAD ;
 int MAC_CTRL_PRMLEN_MASK ;
 int MAC_CTRL_PRMLEN_SHIFT ;
 int MAC_CTRL_PROMIS_EN ;
 int MAC_CTRL_RX_EN ;
 int MAC_CTRL_RX_FLOW ;
 scalar_t__ MAC_CTRL_SPEED_1000 ;
 scalar_t__ MAC_CTRL_SPEED_10_100 ;
 int MAC_CTRL_SPEED_SHIFT ;
 int MAC_CTRL_TX_EN ;
 int MAC_CTRL_TX_FLOW ;
 int NETIF_F_RXALL ;
 int REG_MAC_CTRL ;
 scalar_t__ SPEED_1000 ;
 int __atl1e_vlan_mode (int,int*) ;

__attribute__((used)) static void atl1e_setup_mac_ctrl(struct atl1e_adapter *adapter)
{
 u32 value;
 struct atl1e_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;


 value = MAC_CTRL_TX_EN |
  MAC_CTRL_RX_EN ;

 if (FULL_DUPLEX == adapter->link_duplex)
  value |= MAC_CTRL_DUPLX;

 value |= ((u32)((SPEED_1000 == adapter->link_speed) ?
     MAC_CTRL_SPEED_1000 : MAC_CTRL_SPEED_10_100) <<
     MAC_CTRL_SPEED_SHIFT);
 value |= (MAC_CTRL_TX_FLOW | MAC_CTRL_RX_FLOW);

 value |= (MAC_CTRL_ADD_CRC | MAC_CTRL_PAD);
 value |= (((u32)adapter->hw.preamble_len &
    MAC_CTRL_PRMLEN_MASK) << MAC_CTRL_PRMLEN_SHIFT);

 __atl1e_vlan_mode(netdev->features, &value);

 value |= MAC_CTRL_BC_EN;
 if (netdev->flags & IFF_PROMISC)
  value |= MAC_CTRL_PROMIS_EN;
 if (netdev->flags & IFF_ALLMULTI)
  value |= MAC_CTRL_MC_ALL_EN;
 if (netdev->features & NETIF_F_RXALL)
  value |= MAC_CTRL_DBG;
 AT_WRITE_REG(hw, REG_MAC_CTRL, value);
}
