
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct ixgbe_hw {TYPE_3__ eeprom; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_EEPROM_VERSION ;
 int IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR ;
 int IXGBE_FW_PATCH_VERSION_4 ;
 int IXGBE_FW_PTR ;
 int hw_err (struct ixgbe_hw*,char*,int) ;
 scalar_t__ ixgbe_media_type_fiber ;
 scalar_t__ stub1 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int*) ;

__attribute__((used)) static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_ERR_EEPROM_VERSION;
 u16 fw_offset, fw_ptp_cfg_offset;
 u16 offset;
 u16 fw_version = 0;


 if (hw->phy.media_type != ixgbe_media_type_fiber)
  return 0;


 offset = IXGBE_FW_PTR;
 if (hw->eeprom.ops.read(hw, offset, &fw_offset))
  goto fw_version_err;

 if (fw_offset == 0 || fw_offset == 0xFFFF)
  return IXGBE_ERR_EEPROM_VERSION;


 offset = fw_offset + IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR;
 if (hw->eeprom.ops.read(hw, offset, &fw_ptp_cfg_offset))
  goto fw_version_err;

 if (fw_ptp_cfg_offset == 0 || fw_ptp_cfg_offset == 0xFFFF)
  return IXGBE_ERR_EEPROM_VERSION;


 offset = fw_ptp_cfg_offset + IXGBE_FW_PATCH_VERSION_4;
 if (hw->eeprom.ops.read(hw, offset, &fw_version))
  goto fw_version_err;

 if (fw_version > 0x5)
  status = 0;

 return status;

fw_version_err:
 hw_err(hw, "eeprom read at offset %d failed\n", offset);
 return IXGBE_ERR_EEPROM_VERSION;
}
