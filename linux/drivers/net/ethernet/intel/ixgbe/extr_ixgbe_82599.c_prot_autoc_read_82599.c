
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_AUTOC ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_verify_lesm_fw_enabled_82599 (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 prot_autoc_read_82599(struct ixgbe_hw *hw, bool *locked,
     u32 *reg_val)
{
 s32 ret_val;

 *locked = 0;

 if (ixgbe_verify_lesm_fw_enabled_82599(hw)) {
  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
     IXGBE_GSSR_MAC_CSR_SM);
  if (ret_val)
   return IXGBE_ERR_SWFW_SYNC;

  *locked = 1;
 }

 *reg_val = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 return 0;
}
