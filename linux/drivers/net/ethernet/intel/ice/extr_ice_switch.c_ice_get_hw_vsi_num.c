
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ice_hw {TYPE_1__** vsi_ctx; } ;
struct TYPE_2__ {size_t vsi_num; } ;



u16 ice_get_hw_vsi_num(struct ice_hw *hw, u16 vsi_handle)
{
 return hw->vsi_ctx[vsi_handle]->vsi_num;
}
