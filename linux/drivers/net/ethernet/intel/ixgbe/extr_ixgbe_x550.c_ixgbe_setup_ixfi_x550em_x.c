
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lan_id; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;
typedef scalar_t__ s32 ;


 int IXGBE_KRM_DSP_TXFFE_STATE_4 (int ) ;
 int IXGBE_KRM_DSP_TXFFE_STATE_5 (int ) ;
 int IXGBE_KRM_DSP_TXFFE_STATE_C0_EN ;
 int IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN ;
 int IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN ;
 int IXGBE_KRM_RX_TRN_LINKUP_CTRL (int ) ;
 int IXGBE_KRM_RX_TRN_LINKUP_CTRL_CONV_WO_PROTOCOL ;
 int IXGBE_KRM_TX_COEFF_CTRL_1 (int ) ;
 int IXGBE_KRM_TX_COEFF_CTRL_1_CMINUS1_OVRRD_EN ;
 int IXGBE_KRM_TX_COEFF_CTRL_1_CPLUS1_OVRRD_EN ;
 int IXGBE_KRM_TX_COEFF_CTRL_1_CZERO_EN ;
 int IXGBE_KRM_TX_COEFF_CTRL_1_OVRRD_EN ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 scalar_t__ ixgbe_read_iosf_sb_reg_x550 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ ixgbe_write_iosf_sb_reg_x550 (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static s32 ixgbe_setup_ixfi_x550em_x(struct ixgbe_hw *hw)
{
 s32 status;
 u32 reg_val;


 status = ixgbe_read_iosf_sb_reg_x550(hw,
    IXGBE_KRM_RX_TRN_LINKUP_CTRL(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status)
  return status;

 reg_val |= IXGBE_KRM_RX_TRN_LINKUP_CTRL_CONV_WO_PROTOCOL;
 status = ixgbe_write_iosf_sb_reg_x550(hw,
    IXGBE_KRM_RX_TRN_LINKUP_CTRL(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 if (status)
  return status;


 status = ixgbe_read_iosf_sb_reg_x550(hw,
    IXGBE_KRM_DSP_TXFFE_STATE_4(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status)
  return status;

 reg_val &= ~IXGBE_KRM_DSP_TXFFE_STATE_C0_EN;
 reg_val &= ~IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN;
 reg_val &= ~IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN;
 status = ixgbe_write_iosf_sb_reg_x550(hw,
    IXGBE_KRM_DSP_TXFFE_STATE_4(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 if (status)
  return status;

 status = ixgbe_read_iosf_sb_reg_x550(hw,
    IXGBE_KRM_DSP_TXFFE_STATE_5(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status)
  return status;

 reg_val &= ~IXGBE_KRM_DSP_TXFFE_STATE_C0_EN;
 reg_val &= ~IXGBE_KRM_DSP_TXFFE_STATE_CP1_CN1_EN;
 reg_val &= ~IXGBE_KRM_DSP_TXFFE_STATE_CO_ADAPT_EN;
 status = ixgbe_write_iosf_sb_reg_x550(hw,
    IXGBE_KRM_DSP_TXFFE_STATE_5(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 if (status)
  return status;


 status = ixgbe_read_iosf_sb_reg_x550(hw,
    IXGBE_KRM_TX_COEFF_CTRL_1(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
 if (status)
  return status;

 reg_val |= IXGBE_KRM_TX_COEFF_CTRL_1_OVRRD_EN;
 reg_val |= IXGBE_KRM_TX_COEFF_CTRL_1_CZERO_EN;
 reg_val |= IXGBE_KRM_TX_COEFF_CTRL_1_CPLUS1_OVRRD_EN;
 reg_val |= IXGBE_KRM_TX_COEFF_CTRL_1_CMINUS1_OVRRD_EN;
 status = ixgbe_write_iosf_sb_reg_x550(hw,
    IXGBE_KRM_TX_COEFF_CTRL_1(hw->bus.lan_id),
    IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
 return status;
}
