
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; int need_crosstalk_fix; } ;




 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static bool ixgbe_need_crosstalk_fix(struct ixgbe_hw *hw)
{

 if (!hw->need_crosstalk_fix)
  return 0;


 switch (hw->mac.ops.get_media_type(hw)) {
 case 129:
 case 128:
  break;
 default:
  return 0;
 }

 return 1;
}
