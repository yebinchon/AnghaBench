
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ice_sched_node {size_t num_children; scalar_t__ tx_sched_layer; struct ice_sched_node** children; } ;
struct ice_hw {int dummy; } ;



__attribute__((used)) static bool
ice_sched_find_node_in_subtree(struct ice_hw *hw, struct ice_sched_node *base,
          struct ice_sched_node *node)
{
 u8 i;

 for (i = 0; i < base->num_children; i++) {
  struct ice_sched_node *child = base->children[i];

  if (node == child)
   return 1;

  if (child->tx_sched_layer > node->tx_sched_layer)
   return 0;




  if (ice_sched_find_node_in_subtree(hw, child, node))
   return 1;
 }
 return 0;
}
