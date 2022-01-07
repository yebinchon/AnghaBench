
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_write_ee_hostif_data_X550 (struct ixgbe_hw*,int ,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_write_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 data)
{
 s32 status = 0;

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) == 0) {
  status = ixgbe_write_ee_hostif_data_X550(hw, offset, data);
  hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
 } else {
  hw_dbg(hw, "write ee hostif failed to get semaphore");
  status = IXGBE_ERR_SWFW_SYNC;
 }

 return status;
}
