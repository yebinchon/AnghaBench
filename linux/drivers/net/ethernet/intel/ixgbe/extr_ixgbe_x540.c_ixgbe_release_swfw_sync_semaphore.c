
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SWFW_REGSMP ;
 int IXGBE_SWFW_SYNC (struct ixgbe_hw*) ;
 int IXGBE_SWSM (struct ixgbe_hw*) ;
 int IXGBE_SWSM_SMBI ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void ixgbe_release_swfw_sync_semaphore(struct ixgbe_hw *hw)
{
  u32 swsm;



 swsm = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC(hw));
 swsm &= ~IXGBE_SWFW_REGSMP;
 IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC(hw), swsm);

 swsm = IXGBE_READ_REG(hw, IXGBE_SWSM(hw));
 swsm &= ~IXGBE_SWSM_SMBI;
 IXGBE_WRITE_REG(hw, IXGBE_SWSM(hw), swsm);

 IXGBE_WRITE_FLUSH(hw);
}
