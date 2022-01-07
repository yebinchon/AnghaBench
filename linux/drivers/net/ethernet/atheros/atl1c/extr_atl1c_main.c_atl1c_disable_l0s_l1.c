
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1c_hw {int ctrl_flags; } ;


 int ATL1C_ASPM_L0S_SUPPORT ;
 int ATL1C_ASPM_L1_SUPPORT ;
 int SPEED_0 ;
 int atl1c_set_aspm (struct atl1c_hw*,int ) ;

__attribute__((used)) static void atl1c_disable_l0s_l1(struct atl1c_hw *hw)
{
 u16 ctrl_flags = hw->ctrl_flags;

 hw->ctrl_flags &= ~(ATL1C_ASPM_L0S_SUPPORT | ATL1C_ASPM_L1_SUPPORT);
 atl1c_set_aspm(hw, SPEED_0);
 hw->ctrl_flags = ctrl_flags;
}
