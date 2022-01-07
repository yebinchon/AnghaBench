
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_mac_info {int serdes_link_state; int serdes_has_link; int txcw; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int AN_RETRY_COUNT ;
 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_SLU ;
 int E1000_RXCW_C ;
 int E1000_RXCW_IV ;
 int E1000_RXCW_SYNCH ;
 int E1000_STATUS_LU ;
 int E1000_TXCW_ANE ;
 int RXCW ;
 int STATUS ;
 int TXCW ;




 int e1000e_config_fc_after_link_up (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_check_for_serdes_link_82571(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 rxcw;
 u32 ctrl;
 u32 status;
 u32 txcw;
 u32 i;
 s32 ret_val = 0;

 ctrl = er32(CTRL);
 status = er32(STATUS);
 er32(RXCW);

 usleep_range(10, 20);
 rxcw = er32(RXCW);

 if ((rxcw & E1000_RXCW_SYNCH) && !(rxcw & E1000_RXCW_IV)) {

  switch (mac->serdes_link_state) {
  case 131:
   if (!(status & E1000_STATUS_LU)) {



    mac->serdes_link_state =
        130;
    mac->serdes_has_link = 0;
    e_dbg("AN_UP     -> AN_PROG\n");
   } else {
    mac->serdes_has_link = 1;
   }
   break;

  case 128:





   if (rxcw & E1000_RXCW_C) {

    ew32(TXCW, mac->txcw);
    ew32(CTRL, (ctrl & ~E1000_CTRL_SLU));
    mac->serdes_link_state =
        130;
    mac->serdes_has_link = 0;
    e_dbg("FORCED_UP -> AN_PROG\n");
   } else {
    mac->serdes_has_link = 1;
   }
   break;

  case 130:
   if (rxcw & E1000_RXCW_C) {




    if (status & E1000_STATUS_LU) {
     mac->serdes_link_state =
         131;
     e_dbg("AN_PROG   -> AN_UP\n");
     mac->serdes_has_link = 1;
    } else {

     mac->serdes_link_state =
         129;
     e_dbg("AN_PROG   -> DOWN\n");
    }
   } else {




    ew32(TXCW, (mac->txcw & ~E1000_TXCW_ANE));
    ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
    ew32(CTRL, ctrl);


    ret_val = e1000e_config_fc_after_link_up(hw);
    if (ret_val) {
     e_dbg("Error config flow control\n");
     break;
    }
    mac->serdes_link_state =
        128;
    mac->serdes_has_link = 1;
    e_dbg("AN_PROG   -> FORCED_UP\n");
   }
   break;

  case 129:
  default:




   ew32(TXCW, mac->txcw);
   ew32(CTRL, (ctrl & ~E1000_CTRL_SLU));
   mac->serdes_link_state =
       130;
   mac->serdes_has_link = 0;
   e_dbg("DOWN      -> AN_PROG\n");
   break;
  }
 } else {
  if (!(rxcw & E1000_RXCW_SYNCH)) {
   mac->serdes_has_link = 0;
   mac->serdes_link_state = 129;
   e_dbg("ANYSTATE  -> DOWN\n");
  } else {




   for (i = 0; i < AN_RETRY_COUNT; i++) {
    usleep_range(10, 20);
    rxcw = er32(RXCW);
    if ((rxcw & E1000_RXCW_SYNCH) &&
        (rxcw & E1000_RXCW_C))
     continue;

    if (rxcw & E1000_RXCW_IV) {
     mac->serdes_has_link = 0;
     mac->serdes_link_state =
         129;
     e_dbg("ANYSTATE  -> DOWN\n");
     break;
    }
   }

   if (i == AN_RETRY_COUNT) {
    txcw = er32(TXCW);
    txcw |= E1000_TXCW_ANE;
    ew32(TXCW, txcw);
    mac->serdes_link_state =
        130;
    mac->serdes_has_link = 0;
    e_dbg("ANYSTATE  -> AN_PROG\n");
   }
  }
 }

 return ret_val;
}
