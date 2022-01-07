
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {int (* read_reg_mdi ) (struct ixgbe_hw*,int,int,int *) ;} ;
struct TYPE_8__ {int phy_semaphore_mask; TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_4__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_TOKEN_SM ;
 scalar_t__ stub1 (struct ixgbe_hw*,int) ;
 int stub2 (struct ixgbe_hw*,int,int,int *) ;
 int stub3 (struct ixgbe_hw*,int) ;

__attribute__((used)) static s32 ixgbe_read_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
        u32 device_type, u16 *phy_data)
{
 u32 mask = hw->phy.phy_semaphore_mask | IXGBE_GSSR_TOKEN_SM;
 s32 status;

 if (hw->mac.ops.acquire_swfw_sync(hw, mask))
  return IXGBE_ERR_SWFW_SYNC;

 status = hw->phy.ops.read_reg_mdi(hw, reg_addr, device_type, phy_data);

 hw->mac.ops.release_swfw_sync(hw, mask);

 return status;
}
