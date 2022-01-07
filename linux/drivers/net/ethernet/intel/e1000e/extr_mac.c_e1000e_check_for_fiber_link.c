
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_mac_info {int autoneg_failed; int txcw; int serdes_has_link; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SWDPIN1 ;
 int E1000_RXCW_C ;
 int E1000_STATUS_LU ;
 int E1000_TXCW_ANE ;
 int RXCW ;
 int STATUS ;
 int TXCW ;
 scalar_t__ e1000e_config_fc_after_link_up (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000e_check_for_fiber_link(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 rxcw;
 u32 ctrl;
 u32 status;
 s32 ret_val;

 ctrl = er32(CTRL);
 status = er32(STATUS);
 rxcw = er32(RXCW);
 if ((ctrl & E1000_CTRL_SWDPIN1) && !(status & E1000_STATUS_LU) &&
     !(rxcw & E1000_RXCW_C)) {
  if (!mac->autoneg_failed) {
   mac->autoneg_failed = 1;
   return 0;
  }
  e_dbg("NOT Rx'ing /C/, disable AutoNeg and force link.\n");


  ew32(TXCW, (mac->txcw & ~E1000_TXCW_ANE));


  ctrl = er32(CTRL);
  ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
  ew32(CTRL, ctrl);


  ret_val = e1000e_config_fc_after_link_up(hw);
  if (ret_val) {
   e_dbg("Error configuring flow control\n");
   return ret_val;
  }
 } else if ((ctrl & E1000_CTRL_SLU) && (rxcw & E1000_RXCW_C)) {





  e_dbg("Rx'ing /C/, enable AutoNeg and stop forcing link.\n");
  ew32(TXCW, mac->txcw);
  ew32(CTRL, (ctrl & ~E1000_CTRL_SLU));

  mac->serdes_has_link = 1;
 }

 return 0;
}
