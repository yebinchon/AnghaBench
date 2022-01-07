
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ice_sched_node {scalar_t__ vsi_handle; struct ice_sched_node* sibling; } ;
struct ice_hw {int port_info; } ;


 struct ice_sched_node* ice_sched_get_first_node (int ,struct ice_sched_node*,int ) ;
 int ice_sched_get_vsi_layer (struct ice_hw*) ;

__attribute__((used)) static struct ice_sched_node *
ice_sched_get_vsi_node(struct ice_hw *hw, struct ice_sched_node *tc_node,
         u16 vsi_handle)
{
 struct ice_sched_node *node;
 u8 vsi_layer;

 vsi_layer = ice_sched_get_vsi_layer(hw);
 node = ice_sched_get_first_node(hw->port_info, tc_node, vsi_layer);


 while (node) {
  if (node->vsi_handle == vsi_handle)
   return node;
  node = node->sibling;
 }

 return node;
}
