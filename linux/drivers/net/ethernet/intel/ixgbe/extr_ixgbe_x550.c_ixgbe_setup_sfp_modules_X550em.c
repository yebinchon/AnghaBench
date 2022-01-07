
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * reset; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int ixgbe_init_mac_link_ops_X550em (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_supported_sfp_modules_X550em (struct ixgbe_hw*,int*) ;

__attribute__((used)) static s32 ixgbe_setup_sfp_modules_X550em(struct ixgbe_hw *hw)
{
 s32 status;
 bool linear;


 status = ixgbe_supported_sfp_modules_X550em(hw, &linear);
 if (status)
  return status;

 ixgbe_init_mac_link_ops_X550em(hw);
 hw->phy.ops.reset = ((void*)0);

 return 0;
}
