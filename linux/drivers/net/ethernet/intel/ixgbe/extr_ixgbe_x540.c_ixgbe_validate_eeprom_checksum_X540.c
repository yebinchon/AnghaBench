
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_7__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int (* read ) (struct ixgbe_hw*,int ,scalar_t__*) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ eeprom; } ;
typedef int s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 int IXGBE_ERR_EEPROM_CHECKSUM ;
 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_read_eerd_generic (struct ixgbe_hw*,int ,scalar_t__*) ;
 int stub1 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
            u16 *checksum_val)
{
 s32 status;
 u16 checksum;
 u16 read_checksum = 0;





 status = hw->eeprom.ops.read(hw, 0, &checksum);
 if (status) {
  hw_dbg(hw, "EEPROM read failed\n");
  return status;
 }

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
  return IXGBE_ERR_SWFW_SYNC;

 status = hw->eeprom.ops.calc_checksum(hw);
 if (status < 0)
  goto out;

 checksum = (u16)(status & 0xffff);




 status = ixgbe_read_eerd_generic(hw, IXGBE_EEPROM_CHECKSUM,
      &read_checksum);
 if (status)
  goto out;




 if (read_checksum != checksum) {
  hw_dbg(hw, "Invalid EEPROM checksum");
  status = IXGBE_ERR_EEPROM_CHECKSUM;
 }


 if (checksum_val)
  *checksum_val = checksum;

out:
 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);

 return status;
}
