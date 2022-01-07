
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ice_sched_node {size_t tc_num; } ;
struct ice_port_info {TYPE_1__* root; } ;
struct TYPE_2__ {size_t num_children; struct ice_sched_node** children; } ;



struct ice_sched_node *ice_sched_get_tc_node(struct ice_port_info *pi, u8 tc)
{
 u8 i;

 if (!pi || !pi->root)
  return ((void*)0);
 for (i = 0; i < pi->root->num_children; i++)
  if (pi->root->children[i]->tc_num == tc)
   return pi->root->children[i];
 return ((void*)0);
}
