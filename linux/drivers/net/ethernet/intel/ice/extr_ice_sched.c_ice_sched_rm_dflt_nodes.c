
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ elem_type; } ;
struct TYPE_5__ {TYPE_3__ data; } ;
struct ice_sched_node {scalar_t__ tx_sched_layer; struct ice_sched_node** children; int num_children; TYPE_2__ info; } ;
struct ice_port_info {TYPE_1__* hw; struct ice_sched_node* root; } ;
struct TYPE_4__ {scalar_t__ sw_entry_point_layer; } ;


 scalar_t__ ICE_AQC_ELEM_TYPE_ROOT_PORT ;
 scalar_t__ ICE_AQC_ELEM_TYPE_TC ;
 int ice_free_sched_node (struct ice_port_info*,struct ice_sched_node*) ;
 int ice_rm_dflt_leaf_node (struct ice_port_info*) ;

__attribute__((used)) static void ice_sched_rm_dflt_nodes(struct ice_port_info *pi)
{
 struct ice_sched_node *node;

 ice_rm_dflt_leaf_node(pi);


 node = pi->root;
 while (node) {
  if (node->tx_sched_layer >= pi->hw->sw_entry_point_layer &&
      node->info.data.elem_type != ICE_AQC_ELEM_TYPE_TC &&
      node->info.data.elem_type != ICE_AQC_ELEM_TYPE_ROOT_PORT) {
   ice_free_sched_node(pi, node);
   break;
  }

  if (!node->num_children)
   break;
  node = node->children[0];
 }
}
