
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ mdic_wa_enable; } ;
struct TYPE_4__ {TYPE_1__ e80003es2lan; } ;
struct e1000_hw {TYPE_2__ dev_spec; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_PHY ;
 int GG82563_MIN_ALT_REG ;
 int GG82563_PAGE_SHIFT ;
 int GG82563_PHY_PAGE_SELECT ;
 int GG82563_PHY_PAGE_SELECT_ALT ;
 int MAX_PHY_REG_ADDRESS ;
 scalar_t__ e1000_acquire_phy_80003es2lan (struct e1000_hw*) ;
 int e1000_release_phy_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000e_read_phy_reg_mdic (struct e1000_hw*,int,int*) ;
 scalar_t__ e1000e_write_phy_reg_mdic (struct e1000_hw*,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_write_phy_reg_gg82563_80003es2lan(struct e1000_hw *hw,
         u32 offset, u16 data)
{
 s32 ret_val;
 u32 page_select;
 u16 temp;

 ret_val = e1000_acquire_phy_80003es2lan(hw);
 if (ret_val)
  return ret_val;


 if ((offset & MAX_PHY_REG_ADDRESS) < GG82563_MIN_ALT_REG) {
  page_select = GG82563_PHY_PAGE_SELECT;
 } else {



  page_select = GG82563_PHY_PAGE_SELECT_ALT;
 }

 temp = (u16)((u16)offset >> GG82563_PAGE_SHIFT);
 ret_val = e1000e_write_phy_reg_mdic(hw, page_select, temp);
 if (ret_val) {
  e1000_release_phy_80003es2lan(hw);
  return ret_val;
 }

 if (hw->dev_spec.e80003es2lan.mdic_wa_enable) {




  usleep_range(200, 400);


  ret_val = e1000e_read_phy_reg_mdic(hw, page_select, &temp);

  if (((u16)offset >> GG82563_PAGE_SHIFT) != temp) {
   e1000_release_phy_80003es2lan(hw);
   return -E1000_ERR_PHY;
  }

  usleep_range(200, 400);

  ret_val = e1000e_write_phy_reg_mdic(hw,
          MAX_PHY_REG_ADDRESS &
          offset, data);

  usleep_range(200, 400);
 } else {
  ret_val = e1000e_write_phy_reg_mdic(hw,
          MAX_PHY_REG_ADDRESS &
          offset, data);
 }

 e1000_release_phy_80003es2lan(hw);

 return ret_val;
}
