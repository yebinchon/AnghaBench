
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {scalar_t__ elem_type; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct ice_sched_node {size_t num_children; TYPE_2__ info; struct ice_sched_node** children; } ;


 scalar_t__ ICE_AQC_ELEM_TYPE_LEAF ;

__attribute__((used)) static bool ice_sched_is_leaf_node_present(struct ice_sched_node *node)
{
 u8 i;

 for (i = 0; i < node->num_children; i++)
  if (ice_sched_is_leaf_node_present(node->children[i]))
   return 1;

 return (node->info.data.elem_type == ICE_AQC_ELEM_TYPE_LEAF);
}
