
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int addr; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int BM_PORT_CTRL_PAGE ;
 int BM_WUC_ENABLE_BIT ;
 int BM_WUC_ENABLE_REG ;
 int BM_WUC_HOST_WU_BIT ;
 int BM_WUC_ME_WU_BIT ;
 int BM_WUC_PAGE ;
 int IGP_PAGE_SHIFT ;
 scalar_t__ e1000_set_page_igp (struct e1000_hw*,int) ;
 scalar_t__ e1000e_read_phy_reg_mdic (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000e_write_phy_reg_mdic (struct e1000_hw*,int ,int) ;
 int e_dbg (char*,...) ;

s32 e1000_enable_phy_wakeup_reg_access_bm(struct e1000_hw *hw, u16 *phy_reg)
{
 s32 ret_val;
 u16 temp;


 hw->phy.addr = 1;


 ret_val = e1000_set_page_igp(hw, (BM_PORT_CTRL_PAGE << IGP_PAGE_SHIFT));
 if (ret_val) {
  e_dbg("Could not set Port Control page\n");
  return ret_val;
 }

 ret_val = e1000e_read_phy_reg_mdic(hw, BM_WUC_ENABLE_REG, phy_reg);
 if (ret_val) {
  e_dbg("Could not read PHY register %d.%d\n",
        BM_PORT_CTRL_PAGE, BM_WUC_ENABLE_REG);
  return ret_val;
 }




 temp = *phy_reg;
 temp |= BM_WUC_ENABLE_BIT;
 temp &= ~(BM_WUC_ME_WU_BIT | BM_WUC_HOST_WU_BIT);

 ret_val = e1000e_write_phy_reg_mdic(hw, BM_WUC_ENABLE_REG, temp);
 if (ret_val) {
  e_dbg("Could not write PHY register %d.%d\n",
        BM_PORT_CTRL_PAGE, BM_WUC_ENABLE_REG);
  return ret_val;
 }




 return e1000_set_page_igp(hw, (BM_WUC_PAGE << IGP_PAGE_SHIFT));
}
