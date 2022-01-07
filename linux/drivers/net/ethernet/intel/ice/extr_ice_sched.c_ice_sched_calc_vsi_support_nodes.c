
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_sched_node {scalar_t__ num_children; struct ice_sched_node* sibling; } ;
struct ice_hw {int sw_entry_point_layer; scalar_t__* max_children; int port_info; } ;


 struct ice_sched_node* ice_sched_get_first_node (int ,struct ice_sched_node*,int) ;
 int ice_sched_get_vsi_layer (struct ice_hw*) ;

__attribute__((used)) static void
ice_sched_calc_vsi_support_nodes(struct ice_hw *hw,
     struct ice_sched_node *tc_node, u16 *num_nodes)
{
 struct ice_sched_node *node;
 u8 vsil;
 int i;

 vsil = ice_sched_get_vsi_layer(hw);
 for (i = vsil; i >= hw->sw_entry_point_layer; i--)



  if (!tc_node->num_children || i == vsil) {
   num_nodes[i]++;
  } else {



   node = ice_sched_get_first_node(hw->port_info, tc_node,
       (u8)i);

   while (node) {
    if (node->num_children < hw->max_children[i])
     break;
    node = node->sibling;
   }





   if (node)
    break;

   num_nodes[i]++;
  }
}
