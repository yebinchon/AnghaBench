
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_GSSR_I2C_MASK ;
 int IXGBE_GSSR_NVM_PHY_MASK ;
 int IXGBE_GSSR_SW_MNG_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SWFW_SYNC (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_get_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
{
 u32 swmask = mask & (IXGBE_GSSR_NVM_PHY_MASK | IXGBE_GSSR_SW_MNG_SM);
 u32 swfw_sync;

 if (mask & IXGBE_GSSR_I2C_MASK)
  swmask |= mask & IXGBE_GSSR_I2C_MASK;
 ixgbe_get_swfw_sync_semaphore(hw);

 swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC(hw));
 swfw_sync &= ~swmask;
 IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC(hw), swfw_sync);

 ixgbe_release_swfw_sync_semaphore(hw);
 usleep_range(5000, 6000);
}
