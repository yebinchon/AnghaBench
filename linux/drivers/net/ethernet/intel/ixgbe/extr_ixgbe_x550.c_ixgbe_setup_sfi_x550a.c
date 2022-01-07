
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int ) ;scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_3__ {int lan_id; } ;
struct ixgbe_hw {TYPE_1__ bus; struct ixgbe_mac_info mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 scalar_t__ IXGBE_ERR_LINK_SETUP ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20 (int ) ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_10G ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK ;


 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 scalar_t__ ixgbe_restart_an_internal_phy_x550em (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 s32 status;
 u32 reg_val;


 status = mac->ops.read_iosf_sb_reg(hw,
    IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status)
  return status;

 reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN;
 reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN;
 reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN;
 reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK;


 switch (*speed) {
 case 129:
  reg_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_10G;
  break;
 case 128:
  reg_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G;
  break;
 default:

  return IXGBE_ERR_LINK_SETUP;
 }

 status = mac->ops.write_iosf_sb_reg(hw,
    IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);


 status = ixgbe_restart_an_internal_phy_x550em(hw);

 return status;
}
