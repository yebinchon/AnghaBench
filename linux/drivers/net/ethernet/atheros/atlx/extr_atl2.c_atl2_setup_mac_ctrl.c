
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; int features; } ;
struct atl2_hw {int retry_buf; scalar_t__ preamble_len; } ;
struct atl2_adapter {scalar_t__ link_duplex; struct atl2_hw hw; struct net_device* netdev; } ;


 int ATL2_WRITE_REG (struct atl2_hw*,int ,int) ;
 scalar_t__ FULL_DUPLEX ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CTRL_ADD_CRC ;
 int MAC_CTRL_BC_EN ;
 int MAC_CTRL_DUPLX ;
 int MAC_CTRL_HALF_LEFT_BUF_MASK ;
 int MAC_CTRL_HALF_LEFT_BUF_SHIFT ;
 int MAC_CTRL_MACLP_CLK_PHY ;
 int MAC_CTRL_MC_ALL_EN ;
 int MAC_CTRL_PAD ;
 int MAC_CTRL_PRMLEN_MASK ;
 int MAC_CTRL_PRMLEN_SHIFT ;
 int MAC_CTRL_PROMIS_EN ;
 int MAC_CTRL_RX_EN ;
 int MAC_CTRL_RX_FLOW ;
 int MAC_CTRL_TX_EN ;
 int MAC_CTRL_TX_FLOW ;
 int REG_MAC_CTRL ;
 int __atl2_vlan_mode (int ,int*) ;

__attribute__((used)) static void atl2_setup_mac_ctrl(struct atl2_adapter *adapter)
{
 u32 value;
 struct atl2_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;


 value = MAC_CTRL_TX_EN | MAC_CTRL_RX_EN | MAC_CTRL_MACLP_CLK_PHY;


 if (FULL_DUPLEX == adapter->link_duplex)
  value |= MAC_CTRL_DUPLX;


 value |= (MAC_CTRL_TX_FLOW | MAC_CTRL_RX_FLOW);


 value |= (MAC_CTRL_ADD_CRC | MAC_CTRL_PAD);


 value |= (((u32)adapter->hw.preamble_len & MAC_CTRL_PRMLEN_MASK) <<
  MAC_CTRL_PRMLEN_SHIFT);


 __atl2_vlan_mode(netdev->features, &value);


 value |= MAC_CTRL_BC_EN;
 if (netdev->flags & IFF_PROMISC)
  value |= MAC_CTRL_PROMIS_EN;
 else if (netdev->flags & IFF_ALLMULTI)
  value |= MAC_CTRL_MC_ALL_EN;


 value |= (((u32)(adapter->hw.retry_buf &
  MAC_CTRL_HALF_LEFT_BUF_MASK)) << MAC_CTRL_HALF_LEFT_BUF_SHIFT);

 ATL2_WRITE_REG(hw, REG_MAC_CTRL, value);
}
