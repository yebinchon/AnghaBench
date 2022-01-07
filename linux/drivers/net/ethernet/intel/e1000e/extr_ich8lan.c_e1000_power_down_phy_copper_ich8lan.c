
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {scalar_t__ (* check_mng_mode ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ phy; TYPE_2__ mac; } ;


 int e1000_power_down_phy_copper (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;

__attribute__((used)) static void e1000_power_down_phy_copper_ich8lan(struct e1000_hw *hw)
{

 if (!(hw->mac.ops.check_mng_mode(hw) ||
       hw->phy.ops.check_reset_block(hw)))
  e1000_power_down_phy_copper(hw);
}
