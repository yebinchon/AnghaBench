
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;int (* write_reg_page ) (struct e1000_hw*,int ,scalar_t__) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ rar_entry_count; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int BM_RAR_CTRL (scalar_t__) ;
 int BM_RAR_H (scalar_t__) ;
 int BM_RAR_L (scalar_t__) ;
 int BM_RAR_M (scalar_t__) ;
 int E1000_RAH_AV ;
 int RAH (scalar_t__) ;
 int RAL (scalar_t__) ;
 int e1000_disable_phy_wakeup_reg_access_bm (struct e1000_hw*,scalar_t__*) ;
 scalar_t__ e1000_enable_phy_wakeup_reg_access_bm (struct e1000_hw*,scalar_t__*) ;
 int er32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,int ,scalar_t__) ;
 int stub3 (struct e1000_hw*,int ,scalar_t__) ;
 int stub4 (struct e1000_hw*,int ,scalar_t__) ;
 int stub5 (struct e1000_hw*,int ,scalar_t__) ;
 int stub6 (struct e1000_hw*) ;

void e1000_copy_rx_addrs_to_phy_ich8lan(struct e1000_hw *hw)
{
 u32 mac_reg;
 u16 i, phy_reg = 0;
 s32 ret_val;

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  return;
 ret_val = e1000_enable_phy_wakeup_reg_access_bm(hw, &phy_reg);
 if (ret_val)
  goto release;


 for (i = 0; i < (hw->mac.rar_entry_count); i++) {
  mac_reg = er32(RAL(i));
  hw->phy.ops.write_reg_page(hw, BM_RAR_L(i),
        (u16)(mac_reg & 0xFFFF));
  hw->phy.ops.write_reg_page(hw, BM_RAR_M(i),
        (u16)((mac_reg >> 16) & 0xFFFF));

  mac_reg = er32(RAH(i));
  hw->phy.ops.write_reg_page(hw, BM_RAR_H(i),
        (u16)(mac_reg & 0xFFFF));
  hw->phy.ops.write_reg_page(hw, BM_RAR_CTRL(i),
        (u16)((mac_reg & E1000_RAH_AV)
       >> 16));
 }

 e1000_disable_phy_wakeup_reg_access_bm(hw, &phy_reg);

release:
 hw->phy.ops.release(hw);
}
