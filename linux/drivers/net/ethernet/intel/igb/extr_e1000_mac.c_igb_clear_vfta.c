
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* write_vfta ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;


 int E1000_VLAN_FILTER_TBL_SIZE ;
 int stub1 (struct e1000_hw*,int ,int ) ;

void igb_clear_vfta(struct e1000_hw *hw)
{
 u32 offset;

 for (offset = E1000_VLAN_FILTER_TBL_SIZE; offset--;)
  hw->mac.ops.write_vfta(hw, offset, 0);
}
