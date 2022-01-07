
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int speed; int width; int type; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ bus; } ;
typedef int s32 ;


 int ixgbe_bus_speed_unknown ;
 int ixgbe_bus_type_internal ;
 int ixgbe_bus_width_unknown ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_get_bus_info_X550em(struct ixgbe_hw *hw)
{
 hw->bus.type = ixgbe_bus_type_internal;
 hw->bus.width = ixgbe_bus_width_unknown;
 hw->bus.speed = ixgbe_bus_speed_unknown;

 hw->mac.ops.set_lan_id(hw);

 return 0;
}
