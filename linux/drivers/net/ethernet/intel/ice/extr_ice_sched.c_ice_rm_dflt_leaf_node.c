
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ elem_type; } ;
struct TYPE_3__ {int node_teid; TYPE_2__ data; } ;
struct ice_sched_node {int parent; TYPE_1__ info; struct ice_sched_node** children; int num_children; } ;
struct ice_port_info {int hw; struct ice_sched_node* root; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 scalar_t__ ICE_AQC_ELEM_TYPE_LEAF ;
 int ice_free_sched_node (struct ice_port_info*,struct ice_sched_node*) ;
 int ice_sched_remove_elems (int ,int ,int,int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void ice_rm_dflt_leaf_node(struct ice_port_info *pi)
{
 struct ice_sched_node *node;

 node = pi->root;
 while (node) {
  if (!node->num_children)
   break;
  node = node->children[0];
 }
 if (node && node->info.data.elem_type == ICE_AQC_ELEM_TYPE_LEAF) {
  u32 teid = le32_to_cpu(node->info.node_teid);
  enum ice_status status;


  status = ice_sched_remove_elems(pi->hw, node->parent, 1, &teid);
  if (!status)
   ice_free_sched_node(pi, node);
 }
}
