
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * set_phy_power; } ;
struct ixgbe_phy_info {TYPE_2__ ops; } ;
struct TYPE_3__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_phy_info phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int ixgbe_get_invariants_X540 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_media_type_copper ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_get_invariants_X550_a(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;


 ixgbe_get_invariants_X540(hw);

 if (mac->ops.get_media_type(hw) != ixgbe_media_type_copper)
  phy->ops.set_phy_power = ((void*)0);

 return 0;
}
