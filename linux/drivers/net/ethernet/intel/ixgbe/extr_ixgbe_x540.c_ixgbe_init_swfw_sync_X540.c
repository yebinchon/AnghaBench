
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_GSSR_EEP_SM ;
 int IXGBE_GSSR_I2C_MASK ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_GSSR_SW_MNG_SM ;
 int ixgbe_acquire_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 int ixgbe_get_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 int ixgbe_release_swfw_sync_semaphore (struct ixgbe_hw*) ;

void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw)
{
 u32 rmask;







 ixgbe_get_swfw_sync_semaphore(hw);
 ixgbe_release_swfw_sync_semaphore(hw);


 rmask = IXGBE_GSSR_EEP_SM | IXGBE_GSSR_PHY0_SM |
  IXGBE_GSSR_PHY1_SM | IXGBE_GSSR_MAC_CSR_SM |
  IXGBE_GSSR_SW_MNG_SM | IXGBE_GSSR_I2C_MASK;

 ixgbe_acquire_swfw_sync_X540(hw, rmask);
 ixgbe_release_swfw_sync_X540(hw, rmask);
}
