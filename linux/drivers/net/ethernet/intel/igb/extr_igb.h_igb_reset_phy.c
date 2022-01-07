
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static inline s32 igb_reset_phy(struct e1000_hw *hw)
{
 if (hw->phy.ops.reset)
  return hw->phy.ops.reset(hw);

 return 0;
}
