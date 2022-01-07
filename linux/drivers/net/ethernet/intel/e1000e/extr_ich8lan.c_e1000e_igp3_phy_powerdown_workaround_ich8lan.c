
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; TYPE_2__ phy; } ;


 int CTRL ;
 int E1000_CTRL_PHY_RST ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_GBE_DISABLE ;
 int IGP3_VR_CTRL ;
 int IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK ;
 int IGP3_VR_CTRL_MODE_SHUTDOWN ;
 int PHY_CTRL ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_phy_igp_3 ;
 int e1000e_gig_downshift_workaround_ich8lan (struct e1000_hw*) ;
 int e1e_rphy (struct e1000_hw*,int ,int*) ;
 int e1e_wphy (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

void e1000e_igp3_phy_powerdown_workaround_ich8lan(struct e1000_hw *hw)
{
 u32 reg;
 u16 data;
 u8 retry = 0;

 if (hw->phy.type != e1000_phy_igp_3)
  return;


 do {

  reg = er32(PHY_CTRL);
  reg |= (E1000_PHY_CTRL_GBE_DISABLE |
   E1000_PHY_CTRL_NOND0A_GBE_DISABLE);
  ew32(PHY_CTRL, reg);




  if (hw->mac.type == e1000_ich8lan)
   e1000e_gig_downshift_workaround_ich8lan(hw);


  e1e_rphy(hw, IGP3_VR_CTRL, &data);
  data &= ~IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK;
  e1e_wphy(hw, IGP3_VR_CTRL, data | IGP3_VR_CTRL_MODE_SHUTDOWN);


  e1e_rphy(hw, IGP3_VR_CTRL, &data);
  data &= IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK;
  if ((data == IGP3_VR_CTRL_MODE_SHUTDOWN) || retry)
   break;


  reg = er32(CTRL);
  ew32(CTRL, reg | E1000_CTRL_PHY_RST);
  retry++;
 } while (retry);
}
