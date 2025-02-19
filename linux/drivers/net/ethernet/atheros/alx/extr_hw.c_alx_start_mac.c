
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_hw {int rx_ctrl; scalar_t__ duplex; scalar_t__ link_speed; } ;


 int ALX_MAC_CTRL ;
 int ALX_MAC_CTRL_FULLD ;
 int ALX_MAC_CTRL_RX_EN ;
 int ALX_MAC_CTRL_SPEED ;
 int ALX_MAC_CTRL_SPEED_1000 ;
 int ALX_MAC_CTRL_SPEED_10_100 ;
 int ALX_MAC_CTRL_TX_EN ;
 int ALX_RXQ0 ;
 int ALX_RXQ0_EN ;
 int ALX_SET_FIELD (int,int ,int ) ;
 int ALX_TXQ0 ;
 int ALX_TXQ0_EN ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ SPEED_1000 ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;

void alx_start_mac(struct alx_hw *hw)
{
 u32 mac, txq, rxq;

 rxq = alx_read_mem32(hw, ALX_RXQ0);
 alx_write_mem32(hw, ALX_RXQ0, rxq | ALX_RXQ0_EN);
 txq = alx_read_mem32(hw, ALX_TXQ0);
 alx_write_mem32(hw, ALX_TXQ0, txq | ALX_TXQ0_EN);

 mac = hw->rx_ctrl;
 if (hw->duplex == DUPLEX_FULL)
  mac |= ALX_MAC_CTRL_FULLD;
 else
  mac &= ~ALX_MAC_CTRL_FULLD;
 ALX_SET_FIELD(mac, ALX_MAC_CTRL_SPEED,
        hw->link_speed == SPEED_1000 ? ALX_MAC_CTRL_SPEED_1000 :
           ALX_MAC_CTRL_SPEED_10_100);
 mac |= ALX_MAC_CTRL_TX_EN | ALX_MAC_CTRL_RX_EN;
 hw->rx_ctrl = mac;
 alx_write_mem32(hw, ALX_MAC_CTRL, mac);
}
