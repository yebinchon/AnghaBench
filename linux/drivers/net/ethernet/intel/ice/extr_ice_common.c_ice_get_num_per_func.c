
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int valid_functions; } ;
struct TYPE_4__ {TYPE_1__ common_cap; } ;
struct ice_hw {TYPE_2__ dev_caps; } ;


 int ICE_CAPS_VALID_FUNCS_M ;
 int hweight8 (int) ;

__attribute__((used)) static u32 ice_get_num_per_func(struct ice_hw *hw, u32 max)
{
 u8 funcs;


 funcs = hweight8(hw->dev_caps.common_cap.valid_functions &
    0xFF);

 if (!funcs)
  return 0;

 return max / funcs;
}
