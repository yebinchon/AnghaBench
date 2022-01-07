
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int mac_duplex; int preamble_len; int mac_speed; } ;
struct atl1c_adapter {scalar_t__ link_duplex; scalar_t__ link_speed; struct atl1c_hw hw; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int FIELD_SETX (int,int ,int ) ;
 scalar_t__ FULL_DUPLEX ;
 int MAC_CTRL_ADD_CRC ;
 int MAC_CTRL_BC_EN ;
 int MAC_CTRL_DUPLX ;
 int MAC_CTRL_HASH_ALG_CRC32 ;
 int MAC_CTRL_PAD ;
 int MAC_CTRL_PRMLEN ;
 int MAC_CTRL_RX_EN ;
 int MAC_CTRL_RX_FLOW ;
 int MAC_CTRL_SINGLE_PAUSE_EN ;
 int MAC_CTRL_SPEED ;
 int MAC_CTRL_TX_EN ;
 int MAC_CTRL_TX_FLOW ;
 int REG_MAC_CTRL ;
 int REG_RXQ_CTRL ;
 int REG_TXQ_CTRL ;
 int RXQ_CTRL_EN ;
 scalar_t__ SPEED_1000 ;
 int TXQ_CTRL_EN ;
 int atl1c_mac_speed_1000 ;
 int atl1c_mac_speed_10_100 ;

__attribute__((used)) static void atl1c_start_mac(struct atl1c_adapter *adapter)
{
 struct atl1c_hw *hw = &adapter->hw;
 u32 mac, txq, rxq;

 hw->mac_duplex = adapter->link_duplex == FULL_DUPLEX ? 1 : 0;
 hw->mac_speed = adapter->link_speed == SPEED_1000 ?
  atl1c_mac_speed_1000 : atl1c_mac_speed_10_100;

 AT_READ_REG(hw, REG_TXQ_CTRL, &txq);
 AT_READ_REG(hw, REG_RXQ_CTRL, &rxq);
 AT_READ_REG(hw, REG_MAC_CTRL, &mac);

 txq |= TXQ_CTRL_EN;
 rxq |= RXQ_CTRL_EN;
 mac |= MAC_CTRL_TX_EN | MAC_CTRL_TX_FLOW |
        MAC_CTRL_RX_EN | MAC_CTRL_RX_FLOW |
        MAC_CTRL_ADD_CRC | MAC_CTRL_PAD |
        MAC_CTRL_BC_EN | MAC_CTRL_SINGLE_PAUSE_EN |
        MAC_CTRL_HASH_ALG_CRC32;
 if (hw->mac_duplex)
  mac |= MAC_CTRL_DUPLX;
 else
  mac &= ~MAC_CTRL_DUPLX;
 mac = FIELD_SETX(mac, MAC_CTRL_SPEED, hw->mac_speed);
 mac = FIELD_SETX(mac, MAC_CTRL_PRMLEN, hw->preamble_len);

 AT_WRITE_REG(hw, REG_TXQ_CTRL, txq);
 AT_WRITE_REG(hw, REG_RXQ_CTRL, rxq);
 AT_WRITE_REG(hw, REG_MAC_CTRL, mac);
}
