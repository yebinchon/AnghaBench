
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autotry_restart; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 int ixgbe_disable_tx_laser_multispeed_fiber (struct ixgbe_hw*) ;
 int ixgbe_enable_tx_laser_multispeed_fiber (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_flap_tx_laser_multispeed_fiber(struct ixgbe_hw *hw)
{

 if (ixgbe_check_reset_blocked(hw))
  return;

 if (hw->mac.autotry_restart) {
  ixgbe_disable_tx_laser_multispeed_fiber(hw);
  ixgbe_enable_tx_laser_multispeed_fiber(hw);
  hw->mac.autotry_restart = 0;
 }
}
