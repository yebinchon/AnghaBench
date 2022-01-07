
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_EXTCNF_CTRL_GATE_PHY_CFG ;
 int EXTCNF_CTRL ;
 scalar_t__ e1000_pch2lan ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate)
{
 u32 extcnf_ctrl;

 if (hw->mac.type < e1000_pch2lan)
  return;

 extcnf_ctrl = er32(EXTCNF_CTRL);

 if (gate)
  extcnf_ctrl |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
 else
  extcnf_ctrl &= ~E1000_EXTCNF_CTRL_GATE_PHY_CFG;

 ew32(EXTCNF_CTRL, extcnf_ctrl);
}
