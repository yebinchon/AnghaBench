
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int requested_mode; int disable_fc_autoneg; scalar_t__ strict_ieee; } ;
struct TYPE_7__ {int lan_id; } ;
struct TYPE_5__ {int (* write_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int) ;int (* read_iosf_sb_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {int device_id; TYPE_4__ fc; TYPE_3__ bus; TYPE_2__ mac; } ;
typedef int s32 ;






 int IXGBE_ERR_CONFIG ;
 int IXGBE_ERR_INVALID_LINK_SETTINGS ;
 int IXGBE_KRM_AN_CNTL_1 (int ) ;
 int IXGBE_KRM_AN_CNTL_1_ASM_PAUSE ;
 int IXGBE_KRM_AN_CNTL_1_SYM_PAUSE ;
 int IXGBE_SB_IOSF_TARGET_KR_PHY ;
 int hw_err (struct ixgbe_hw*,char*) ;
 int ixgbe_fc_default ;




 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int) ;

__attribute__((used)) static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
{
 bool pause, asm_dir;
 u32 reg_val;
 s32 rc = 0;


 if (hw->fc.strict_ieee && hw->fc.requested_mode == 129) {
  hw_err(hw, "ixgbe_fc_rx_pause not valid in strict IEEE mode\n");
  return IXGBE_ERR_INVALID_LINK_SETTINGS;
 }




 if (hw->fc.requested_mode == ixgbe_fc_default)
  hw->fc.requested_mode = 131;


 switch (hw->fc.requested_mode) {
 case 130:
  pause = 0;
  asm_dir = 0;
  break;
 case 128:
  pause = 0;
  asm_dir = 1;
  break;
 case 129:
 case 131:
  pause = 1;
  asm_dir = 1;
  break;
 default:
  hw_err(hw, "Flow control param set incorrectly\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (hw->device_id) {
 case 133:
 case 135:
 case 134:
  rc = hw->mac.ops.read_iosf_sb_reg(hw,
         IXGBE_KRM_AN_CNTL_1(hw->bus.lan_id),
         IXGBE_SB_IOSF_TARGET_KR_PHY,
         &reg_val);
  if (rc)
   return rc;

  reg_val &= ~(IXGBE_KRM_AN_CNTL_1_SYM_PAUSE |
        IXGBE_KRM_AN_CNTL_1_ASM_PAUSE);
  if (pause)
   reg_val |= IXGBE_KRM_AN_CNTL_1_SYM_PAUSE;
  if (asm_dir)
   reg_val |= IXGBE_KRM_AN_CNTL_1_ASM_PAUSE;
  rc = hw->mac.ops.write_iosf_sb_reg(hw,
         IXGBE_KRM_AN_CNTL_1(hw->bus.lan_id),
         IXGBE_SB_IOSF_TARGET_KR_PHY,
         reg_val);


  hw->fc.disable_fc_autoneg = 1;
  break;
 case 132:
  hw->fc.disable_fc_autoneg = 1;
  break;
 default:
  break;
 }
 return rc;
}
