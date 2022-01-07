
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct ixgbe_hw*,scalar_t__) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_clock_out_i2c_byte (struct ixgbe_hw*,int ) ;
 int ixgbe_get_i2c_ack (struct ixgbe_hw*) ;
 int ixgbe_i2c_bus_clear (struct ixgbe_hw*) ;
 int ixgbe_i2c_start (struct ixgbe_hw*) ;
 int ixgbe_i2c_stop (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,scalar_t__) ;
 int stub2 (struct ixgbe_hw*,scalar_t__) ;
 int stub3 (struct ixgbe_hw*,scalar_t__) ;

__attribute__((used)) static s32 ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
         u8 dev_addr, u8 data, bool lock)
{
 s32 status;
 u32 max_retry = 1;
 u32 retry = 0;
 u32 swfw_mask = hw->phy.phy_semaphore_mask;

 if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
  return IXGBE_ERR_SWFW_SYNC;

 do {
  ixgbe_i2c_start(hw);

  status = ixgbe_clock_out_i2c_byte(hw, dev_addr);
  if (status != 0)
   goto fail;

  status = ixgbe_get_i2c_ack(hw);
  if (status != 0)
   goto fail;

  status = ixgbe_clock_out_i2c_byte(hw, byte_offset);
  if (status != 0)
   goto fail;

  status = ixgbe_get_i2c_ack(hw);
  if (status != 0)
   goto fail;

  status = ixgbe_clock_out_i2c_byte(hw, data);
  if (status != 0)
   goto fail;

  status = ixgbe_get_i2c_ack(hw);
  if (status != 0)
   goto fail;

  ixgbe_i2c_stop(hw);
  if (lock)
   hw->mac.ops.release_swfw_sync(hw, swfw_mask);
  return 0;

fail:
  ixgbe_i2c_bus_clear(hw);
  retry++;
  if (retry < max_retry)
   hw_dbg(hw, "I2C byte write error - Retrying.\n");
  else
   hw_dbg(hw, "I2C byte write error.\n");
 } while (retry < max_retry);

 if (lock)
  hw->mac.ops.release_swfw_sync(hw, swfw_mask);

 return status;
}
