
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_SDP3_DATA ;
 int E1000_PCS_CFG0 ;
 int E1000_PCS_CFG_PCS_EN ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int igb_enable_mng_pass_thru (struct e1000_hw*) ;
 scalar_t__ igb_sgmii_active_82575 (struct e1000_hw*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int ) ;
 int wrfl () ;

void igb_shutdown_serdes_link_82575(struct e1000_hw *hw)
{
 u32 reg;

 if (hw->phy.media_type != e1000_media_type_internal_serdes &&
     igb_sgmii_active_82575(hw))
  return;

 if (!igb_enable_mng_pass_thru(hw)) {

  reg = rd32(E1000_PCS_CFG0);
  reg &= ~E1000_PCS_CFG_PCS_EN;
  wr32(E1000_PCS_CFG0, reg);


  reg = rd32(E1000_CTRL_EXT);
  reg |= E1000_CTRL_EXT_SDP3_DATA;
  wr32(E1000_CTRL_EXT, reg);


  wrfl();
  usleep_range(1000, 2000);
 }
}
