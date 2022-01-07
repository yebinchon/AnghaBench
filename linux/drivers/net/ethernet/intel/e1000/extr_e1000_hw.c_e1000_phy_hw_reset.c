
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ mac_type; } ;
typedef int s32 ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_SDP4_DATA ;
 int E1000_CTRL_EXT_SDP4_DIR ;
 int E1000_CTRL_PHY_RST ;
 int E1000_WRITE_FLUSH () ;
 int IGP_ACTIVITY_LED_ENABLE ;
 int IGP_ACTIVITY_LED_MASK ;
 int IGP_LED3_MODE ;
 int LEDCTL ;
 scalar_t__ e1000_82541 ;
 scalar_t__ e1000_82543 ;
 scalar_t__ e1000_82547 ;
 int e1000_get_phy_cfg_done (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int udelay (int) ;

s32 e1000_phy_hw_reset(struct e1000_hw *hw)
{
 u32 ctrl, ctrl_ext;
 u32 led_ctrl;

 e_dbg("Resetting Phy...\n");

 if (hw->mac_type > e1000_82543) {





  ctrl = er32(CTRL);
  ew32(CTRL, ctrl | E1000_CTRL_PHY_RST);
  E1000_WRITE_FLUSH();

  msleep(10);

  ew32(CTRL, ctrl);
  E1000_WRITE_FLUSH();

 } else {




  ctrl_ext = er32(CTRL_EXT);
  ctrl_ext |= E1000_CTRL_EXT_SDP4_DIR;
  ctrl_ext &= ~E1000_CTRL_EXT_SDP4_DATA;
  ew32(CTRL_EXT, ctrl_ext);
  E1000_WRITE_FLUSH();
  msleep(10);
  ctrl_ext |= E1000_CTRL_EXT_SDP4_DATA;
  ew32(CTRL_EXT, ctrl_ext);
  E1000_WRITE_FLUSH();
 }
 udelay(150);

 if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {

  led_ctrl = er32(LEDCTL);
  led_ctrl &= IGP_ACTIVITY_LED_MASK;
  led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
  ew32(LEDCTL, led_ctrl);
 }


 return e1000_get_phy_cfg_done(hw);
}
