
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_TOKEN_SM ;
 int ixgbe_write_phy_reg_mdi (struct ixgbe_hw*,int,int,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int) ;
 int stub2 (struct ixgbe_hw*,int) ;

__attribute__((used)) static s32 ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
         u32 device_type, u16 phy_data)
{
 u32 mask = hw->phy.phy_semaphore_mask | IXGBE_GSSR_TOKEN_SM;
 s32 status;

 if (hw->mac.ops.acquire_swfw_sync(hw, mask))
  return IXGBE_ERR_SWFW_SYNC;

 status = ixgbe_write_phy_reg_mdi(hw, reg_addr, device_type, phy_data);
 hw->mac.ops.release_swfw_sync(hw, mask);

 return status;
}
