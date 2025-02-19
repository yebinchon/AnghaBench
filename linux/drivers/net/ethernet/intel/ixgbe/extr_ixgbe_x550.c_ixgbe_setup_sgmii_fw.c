
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int ) ;scalar_t__ (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct TYPE_7__ {scalar_t__ (* setup_link_speed ) (struct ixgbe_hw*,int ,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int lan_id; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ bus; struct ixgbe_mac_info mac; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_KRM_LINK_CTRL_1 (int ) ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_AN_CLAUSE_37_EN ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_AN_SGMII_EN ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G ;
 int IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20 (int ) ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_AN ;
 int IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK ;
 int IXGBE_KRM_SGMII_CTRL (int ) ;
 int IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_100_D ;
 int IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_10_D ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 int ixgbe_restart_an_internal_phy_x550em (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int ,int ,int ) ;
 scalar_t__ stub8 (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_setup_sgmii_fw(struct ixgbe_hw *hw, ixgbe_link_speed speed,
    bool autoneg_wait)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 u32 lval, sval, flx_val;
 s32 rc;

 rc = mac->ops.read_iosf_sb_reg(hw,
           IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
           IXGBE_SB_IOSF_TARGET_KR_PHY, &lval);
 if (rc)
  return rc;

 lval &= ~IXGBE_KRM_LINK_CTRL_1_TETH_AN_ENABLE;
 lval &= ~IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_MASK;
 lval |= IXGBE_KRM_LINK_CTRL_1_TETH_AN_SGMII_EN;
 lval |= IXGBE_KRM_LINK_CTRL_1_TETH_AN_CLAUSE_37_EN;
 lval &= ~IXGBE_KRM_LINK_CTRL_1_TETH_FORCE_SPEED_1G;
 rc = mac->ops.write_iosf_sb_reg(hw,
     IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, lval);
 if (rc)
  return rc;

 rc = mac->ops.read_iosf_sb_reg(hw,
           IXGBE_KRM_SGMII_CTRL(hw->bus.lan_id),
           IXGBE_SB_IOSF_TARGET_KR_PHY, &sval);
 if (rc)
  return rc;

 sval &= ~IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_10_D;
 sval &= ~IXGBE_KRM_SGMII_CTRL_MAC_TAR_FORCE_100_D;
 rc = mac->ops.write_iosf_sb_reg(hw,
     IXGBE_KRM_SGMII_CTRL(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, sval);
 if (rc)
  return rc;

 rc = mac->ops.write_iosf_sb_reg(hw,
     IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
     IXGBE_SB_IOSF_TARGET_KR_PHY, lval);
 if (rc)
  return rc;

 rc = mac->ops.read_iosf_sb_reg(hw,
        IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
        IXGBE_SB_IOSF_TARGET_KR_PHY, &flx_val);
 if (rc)
  return rc;

 flx_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK;
 flx_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_AN;
 flx_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN;
 flx_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN;
 flx_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN;

 rc = mac->ops.write_iosf_sb_reg(hw,
        IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
        IXGBE_SB_IOSF_TARGET_KR_PHY, flx_val);
 if (rc)
  return rc;

 ixgbe_restart_an_internal_phy_x550em(hw);

 return hw->phy.ops.setup_link_speed(hw, speed, autoneg_wait);
}
