
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 scalar_t__ e1000_phy_reset (struct e1000_hw*) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_copper_link_rtl_setup(struct e1000_hw *hw)
{
 s32 ret_val;


 ret_val = e1000_phy_reset(hw);
 if (ret_val) {
  e_dbg("Error Resetting the PHY\n");
  return ret_val;
 }

 return E1000_SUCCESS;
}
