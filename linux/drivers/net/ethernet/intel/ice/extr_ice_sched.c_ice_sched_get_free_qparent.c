
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {struct ice_sched_node** vsi_node; } ;
struct ice_vsi_ctx {TYPE_1__ sched; } ;
struct ice_sched_node {scalar_t__ num_children; size_t owner; struct ice_sched_node* sibling; } ;
struct ice_port_info {TYPE_2__* hw; } ;
struct TYPE_6__ {scalar_t__* max_children; } ;


 struct ice_vsi_ctx* ice_get_vsi_ctx (TYPE_2__*,scalar_t__) ;
 scalar_t__ ice_sched_find_node_in_subtree (TYPE_2__*,struct ice_sched_node*,struct ice_sched_node*) ;
 struct ice_sched_node* ice_sched_get_first_node (struct ice_port_info*,struct ice_sched_node*,size_t) ;
 size_t ice_sched_get_qgrp_layer (TYPE_2__*) ;

struct ice_sched_node *
ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
      u8 owner)
{
 struct ice_sched_node *vsi_node, *qgrp_node = ((void*)0);
 struct ice_vsi_ctx *vsi_ctx;
 u16 max_children;
 u8 qgrp_layer;

 qgrp_layer = ice_sched_get_qgrp_layer(pi->hw);
 max_children = pi->hw->max_children[qgrp_layer];

 vsi_ctx = ice_get_vsi_ctx(pi->hw, vsi_handle);
 if (!vsi_ctx)
  return ((void*)0);
 vsi_node = vsi_ctx->sched.vsi_node[tc];

 if (!vsi_node)
  goto lan_q_exit;


 qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
 while (qgrp_node) {

  if (ice_sched_find_node_in_subtree(pi->hw, vsi_node, qgrp_node))
   if (qgrp_node->num_children < max_children &&
       qgrp_node->owner == owner)
    break;
  qgrp_node = qgrp_node->sibling;
 }

lan_q_exit:
 return qgrp_node;
}
