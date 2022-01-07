
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct alx_hw {int rx_ctrl; } ;


 int ALX_FC_RX ;
 int ALX_FC_TX ;
 int ALX_MAC_CTRL ;
 int ALX_MAC_CTRL_RXFC_EN ;
 int ALX_MAC_CTRL_TXFC_EN ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;

void alx_cfg_mac_flowcontrol(struct alx_hw *hw, u8 fc)
{
 if (fc & ALX_FC_RX)
  hw->rx_ctrl |= ALX_MAC_CTRL_RXFC_EN;
 else
  hw->rx_ctrl &= ~ALX_MAC_CTRL_RXFC_EN;

 if (fc & ALX_FC_TX)
  hw->rx_ctrl |= ALX_MAC_CTRL_TXFC_EN;
 else
  hw->rx_ctrl &= ~ALX_MAC_CTRL_TXFC_EN;

 alx_write_mem32(hw, ALX_MAC_CTRL, hw->rx_ctrl);
}
