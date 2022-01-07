
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
typedef int s32 ;


 int IGC_CTRL ;
 int IGC_CTRL_FRCDPX ;
 int IGC_CTRL_FRCSPD ;
 int IGC_CTRL_SLU ;
 int igc_setup_copper_link (struct igc_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igc_setup_copper_link_base(struct igc_hw *hw)
{
 s32 ret_val = 0;
 u32 ctrl;

 ctrl = rd32(IGC_CTRL);
 ctrl |= IGC_CTRL_SLU;
 ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX);
 wr32(IGC_CTRL, ctrl);

 ret_val = igc_setup_copper_link(hw);

 return ret_val;
}
