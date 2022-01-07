
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * set_phy_power; } ;
struct ixgbe_phy_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_phy_info phy; } ;
typedef int s32 ;


 int ixgbe_get_invariants_X540 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_get_invariants_X550_x_fw(struct ixgbe_hw *hw)
{
 struct ixgbe_phy_info *phy = &hw->phy;


 ixgbe_get_invariants_X540(hw);

 phy->ops.set_phy_power = ((void*)0);

 return 0;
}
