
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int BM_PORT_CTRL_PAGE ;
 int BM_WUC_ENABLE_REG ;
 int IGP_PAGE_SHIFT ;
 scalar_t__ e1000_set_page_igp (struct e1000_hw*,int) ;
 scalar_t__ e1000e_write_phy_reg_mdic (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*,...) ;

s32 e1000_disable_phy_wakeup_reg_access_bm(struct e1000_hw *hw, u16 *phy_reg)
{
 s32 ret_val;


 ret_val = e1000_set_page_igp(hw, (BM_PORT_CTRL_PAGE << IGP_PAGE_SHIFT));
 if (ret_val) {
  e_dbg("Could not set Port Control page\n");
  return ret_val;
 }


 ret_val = e1000e_write_phy_reg_mdic(hw, BM_WUC_ENABLE_REG, *phy_reg);
 if (ret_val)
  e_dbg("Could not restore PHY register %d.%d\n",
        BM_PORT_CTRL_PAGE, BM_WUC_ENABLE_REG);

 return ret_val;
}
