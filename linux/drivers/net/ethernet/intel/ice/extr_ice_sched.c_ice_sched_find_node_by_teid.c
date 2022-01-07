
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {scalar_t__ elem_type; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct ice_sched_node {size_t num_children; scalar_t__ tx_sched_layer; struct ice_sched_node** children; TYPE_2__ info; } ;


 scalar_t__ ICE_AQC_ELEM_TYPE_LEAF ;
 scalar_t__ ICE_AQC_TOPO_MAX_LEVEL_NUM ;
 int ICE_TXSCHED_GET_NODE_TEID (struct ice_sched_node*) ;

struct ice_sched_node *
ice_sched_find_node_by_teid(struct ice_sched_node *start_node, u32 teid)
{
 u16 i;


 if (ICE_TXSCHED_GET_NODE_TEID(start_node) == teid)
  return start_node;


 if (!start_node->num_children ||
     start_node->tx_sched_layer >= ICE_AQC_TOPO_MAX_LEVEL_NUM ||
     start_node->info.data.elem_type == ICE_AQC_ELEM_TYPE_LEAF)
  return ((void*)0);


 for (i = 0; i < start_node->num_children; i++)
  if (ICE_TXSCHED_GET_NODE_TEID(start_node->children[i]) == teid)
   return start_node->children[i];


 for (i = 0; i < start_node->num_children; i++) {
  struct ice_sched_node *tmp;

  tmp = ice_sched_find_node_by_teid(start_node->children[i],
        teid);
  if (tmp)
   return tmp;
 }

 return ((void*)0);
}
