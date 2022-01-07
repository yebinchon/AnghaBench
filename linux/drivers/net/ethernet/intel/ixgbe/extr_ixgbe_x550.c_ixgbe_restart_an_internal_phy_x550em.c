
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int lan_id; } ;
struct TYPE_4__ {scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int ) ;scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ bus; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_KRM_LINK_CTRL_1 (int ) ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_AN_RESTART ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20 (int ) ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_FW_AN_RESTART ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_mac_x550em_a ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static s32 ixgbe_restart_an_internal_phy_x550em(struct ixgbe_hw *hw)
{
 s32 status;
 u32 link_ctrl;


 status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &link_ctrl);

 if (status) {
  hw_dbg(hw, "Auto-negotiation did not complete\n");
  return status;
 }

 link_ctrl |= IXGBE_KRM_LINK_CTRL_1_TETH_AN_RESTART;
 status = hw->mac.ops.write_iosf_sb_reg(hw,
    IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, link_ctrl);

 if (hw->mac.type == ixgbe_mac_x550em_a) {
  u32 flx_mask_st20;


  status = hw->mac.ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &flx_mask_st20);

  if (status) {
   hw_dbg(hw, "Auto-negotiation did not complete\n");
   return status;
  }

  flx_mask_st20 |= IXGBE_KRM_PMD_FLX_MASK_ST20_FW_AN_RESTART;
  status = hw->mac.ops.write_iosf_sb_reg(hw,
    IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, flx_mask_st20);
 }

 return status;
}
