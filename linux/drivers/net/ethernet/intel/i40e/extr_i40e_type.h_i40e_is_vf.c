
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_1__ mac; } ;


 scalar_t__ I40E_MAC_VF ;
 scalar_t__ I40E_MAC_X722_VF ;

__attribute__((used)) static inline bool i40e_is_vf(struct i40e_hw *hw)
{
 return (hw->mac.type == I40E_MAC_VF ||
  hw->mac.type == I40E_MAC_X722_VF);
}
