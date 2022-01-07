
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_8__ {int semaphore_delay; } ;
struct TYPE_6__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct TYPE_5__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_4__ eeprom; TYPE_3__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_CS4227_CHECK_DELAY ;
 scalar_t__ IXGBE_CS4227_RESET_COMPLETE ;
 scalar_t__ IXGBE_CS4227_RESET_PENDING ;
 scalar_t__ IXGBE_CS4227_RETRIES ;
 int IXGBE_CS4227_SCRATCH ;
 int hw_err (struct ixgbe_hw*,char*,scalar_t__) ;
 scalar_t__ ixgbe_read_cs4227 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ ixgbe_reset_cs4227 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_write_cs4227 (struct ixgbe_hw*,int ,scalar_t__) ;
 int msleep (int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ) ;
 int stub6 (struct ixgbe_hw*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ixgbe_check_cs4227(struct ixgbe_hw *hw)
{
 u32 swfw_mask = hw->phy.phy_semaphore_mask;
 s32 status;
 u16 value;
 u8 retry;

 for (retry = 0; retry < IXGBE_CS4227_RETRIES; retry++) {
  status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
  if (status) {
   hw_err(hw, "semaphore failed with %d\n", status);
   msleep(IXGBE_CS4227_CHECK_DELAY);
   continue;
  }


  status = ixgbe_read_cs4227(hw, IXGBE_CS4227_SCRATCH, &value);
  if (!status && value == IXGBE_CS4227_RESET_COMPLETE)
   goto out;

  if (status || value != IXGBE_CS4227_RESET_PENDING)
   break;


  hw->mac.ops.release_swfw_sync(hw, swfw_mask);
  msleep(IXGBE_CS4227_CHECK_DELAY);
 }

 if (retry == IXGBE_CS4227_RETRIES) {
  status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
  if (status) {
   hw_err(hw, "semaphore failed with %d\n", status);
   return;
  }
 }


 status = ixgbe_reset_cs4227(hw);
 if (status) {
  hw_err(hw, "CS4227 reset failed: %d", status);
  goto out;
 }




 ixgbe_write_cs4227(hw, IXGBE_CS4227_SCRATCH,
      IXGBE_CS4227_RESET_PENDING);
 hw->mac.ops.release_swfw_sync(hw, swfw_mask);
 usleep_range(10000, 12000);
 status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
 if (status) {
  hw_err(hw, "semaphore failed with %d", status);
  return;
 }


 status = ixgbe_write_cs4227(hw, IXGBE_CS4227_SCRATCH,
        IXGBE_CS4227_RESET_COMPLETE);

out:
 hw->mac.ops.release_swfw_sync(hw, swfw_mask);
 msleep(hw->eeprom.semaphore_delay);
}
