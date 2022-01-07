
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_GSSR_EEP_SM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_write_ee_hostif_data_X550 (struct ixgbe_hw*,size_t,size_t) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_write_ee_hostif_buffer_X550(struct ixgbe_hw *hw,
          u16 offset, u16 words,
          u16 *data)
{
 s32 status = 0;
 u32 i = 0;


 status = hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
 if (status) {
  hw_dbg(hw, "EEPROM write buffer - semaphore failed\n");
  return status;
 }

 for (i = 0; i < words; i++) {
  status = ixgbe_write_ee_hostif_data_X550(hw, offset + i,
        data[i]);
  if (status) {
   hw_dbg(hw, "Eeprom buffered write failed\n");
   break;
  }
 }

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);

 return status;
}
