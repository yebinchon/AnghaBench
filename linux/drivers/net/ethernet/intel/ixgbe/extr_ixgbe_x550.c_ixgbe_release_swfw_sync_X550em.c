
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_GSSR_I2C_MASK ;
 int ixgbe_release_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 int ixgbe_set_mux (struct ixgbe_hw*,int ) ;

__attribute__((used)) static void ixgbe_release_swfw_sync_X550em(struct ixgbe_hw *hw, u32 mask)
{
 if (mask & IXGBE_GSSR_I2C_MASK)
  ixgbe_set_mux(hw, 0);

 ixgbe_release_swfw_sync_X540(hw, mask);
}
