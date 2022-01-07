
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int FW_PHY_TOKEN_DELAY ;
 int FW_PHY_TOKEN_RETRIES ;
 scalar_t__ IXGBE_ERR_TOKEN_RETRY ;
 int IXGBE_GSSR_TOKEN_SM ;
 scalar_t__ ixgbe_acquire_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_get_phy_token (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 int msleep (int ) ;

__attribute__((used)) static s32 ixgbe_acquire_swfw_sync_x550em_a(struct ixgbe_hw *hw, u32 mask)
{
 u32 hmask = mask & ~IXGBE_GSSR_TOKEN_SM;
 int retries = FW_PHY_TOKEN_RETRIES;
 s32 status;

 while (--retries) {
  status = 0;
  if (hmask)
   status = ixgbe_acquire_swfw_sync_X540(hw, hmask);
  if (status)
   return status;
  if (!(mask & IXGBE_GSSR_TOKEN_SM))
   return 0;

  status = ixgbe_get_phy_token(hw);
  if (!status)
   return 0;
  if (hmask)
   ixgbe_release_swfw_sync_X540(hw, hmask);
  if (status != IXGBE_ERR_TOKEN_RETRY)
   return status;
  msleep(FW_PHY_TOKEN_DELAY);
 }

 return status;
}
