
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct ice_hw {int * max_children; } ;


 int DIV_ROUND_UP (int,int ) ;
 size_t ice_sched_get_qgrp_layer (struct ice_hw*) ;
 size_t ice_sched_get_vsi_layer (struct ice_hw*) ;

__attribute__((used)) static void
ice_sched_calc_vsi_child_nodes(struct ice_hw *hw, u16 num_qs, u16 *num_nodes)
{
 u16 num = num_qs;
 u8 i, qgl, vsil;

 qgl = ice_sched_get_qgrp_layer(hw);
 vsil = ice_sched_get_vsi_layer(hw);


 for (i = qgl; i > vsil; i--) {

  num = DIV_ROUND_UP(num, hw->max_children[i]);


  num_nodes[i] = num ? num : 1;
 }
}
