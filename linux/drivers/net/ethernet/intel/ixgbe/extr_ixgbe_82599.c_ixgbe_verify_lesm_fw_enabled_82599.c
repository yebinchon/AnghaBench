
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct ixgbe_hw*,scalar_t__,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_FW_LESM_PARAMETERS_PTR ;
 scalar_t__ IXGBE_FW_LESM_STATE_1 ;
 int IXGBE_FW_LESM_STATE_ENABLED ;
 scalar_t__ IXGBE_FW_PTR ;
 scalar_t__ stub1 (struct ixgbe_hw*,scalar_t__,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,scalar_t__,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,scalar_t__,int*) ;

__attribute__((used)) static bool ixgbe_verify_lesm_fw_enabled_82599(struct ixgbe_hw *hw)
{
 u16 fw_offset, fw_lesm_param_offset, fw_lesm_state;
 s32 status;


 status = hw->eeprom.ops.read(hw, IXGBE_FW_PTR, &fw_offset);

 if (status || fw_offset == 0 || fw_offset == 0xFFFF)
  return 0;


 status = hw->eeprom.ops.read(hw, (fw_offset +
         IXGBE_FW_LESM_PARAMETERS_PTR),
         &fw_lesm_param_offset);

 if (status ||
     fw_lesm_param_offset == 0 || fw_lesm_param_offset == 0xFFFF)
  return 0;


 status = hw->eeprom.ops.read(hw, (fw_lesm_param_offset +
         IXGBE_FW_LESM_STATE_1),
         &fw_lesm_state);

 if (!status && (fw_lesm_state & IXGBE_FW_LESM_STATE_ENABLED))
  return 1;

 return 0;
}
