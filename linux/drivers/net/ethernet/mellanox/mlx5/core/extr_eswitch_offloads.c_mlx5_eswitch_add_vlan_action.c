
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct offloads_fdb {int vlan_push_pop_refcount; } ;
struct mlx5_eswitch_rep {scalar_t__ vlan_refcount; int vlan; int vport; } ;
struct TYPE_4__ {struct offloads_fdb offloads; } ;
struct mlx5_eswitch {int state_lock; int dev; TYPE_1__ fdb_table; } ;
struct mlx5_esw_flow_attr {int action; int vlan_handled; int * vlan_vid; TYPE_3__* dests; int dest_chain; } ;
struct TYPE_6__ {TYPE_2__* rep; } ;
struct TYPE_5__ {scalar_t__ vport; } ;


 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 int SET_VLAN_INSERT ;
 int SET_VLAN_STRIP ;
 int __mlx5_eswitch_set_vport_vlan (struct mlx5_eswitch*,int ,int ,int ,int) ;
 int esw_add_vlan_action_check (struct mlx5_esw_flow_attr*,int,int,int) ;
 int esw_set_global_vlan_pop (struct mlx5_eswitch*,int) ;
 struct mlx5_eswitch_rep* esw_vlan_action_get_vport (struct mlx5_esw_flow_attr*,int,int) ;
 scalar_t__ mlx5_eswitch_vlan_actions_supported (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_add_vlan_action(struct mlx5_eswitch *esw,
     struct mlx5_esw_flow_attr *attr)
{
 struct offloads_fdb *offloads = &esw->fdb_table.offloads;
 struct mlx5_eswitch_rep *vport = ((void*)0);
 bool push, pop, fwd;
 int err = 0;


 if (mlx5_eswitch_vlan_actions_supported(esw->dev, 1))
  return 0;

 push = !!(attr->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH);
 pop = !!(attr->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_POP);
 fwd = !!((attr->action & MLX5_FLOW_CONTEXT_ACTION_FWD_DEST) &&
     !attr->dest_chain);

 mutex_lock(&esw->state_lock);

 err = esw_add_vlan_action_check(attr, push, pop, fwd);
 if (err)
  goto unlock;

 attr->vlan_handled = 0;

 vport = esw_vlan_action_get_vport(attr, push, pop);

 if (!push && !pop && fwd) {

  if (attr->dests[0].rep->vport == MLX5_VPORT_UPLINK) {
   vport->vlan_refcount++;
   attr->vlan_handled = 1;
  }

  goto unlock;
 }

 if (!push && !pop)
  goto unlock;

 if (!(offloads->vlan_push_pop_refcount)) {

  err = esw_set_global_vlan_pop(esw, SET_VLAN_STRIP);
  if (err)
   goto out;
 }
 offloads->vlan_push_pop_refcount++;

 if (push) {
  if (vport->vlan_refcount)
   goto skip_set_push;

  err = __mlx5_eswitch_set_vport_vlan(esw, vport->vport, attr->vlan_vid[0], 0,
          SET_VLAN_INSERT | SET_VLAN_STRIP);
  if (err)
   goto out;
  vport->vlan = attr->vlan_vid[0];
skip_set_push:
  vport->vlan_refcount++;
 }
out:
 if (!err)
  attr->vlan_handled = 1;
unlock:
 mutex_unlock(&esw->state_lock);
 return err;
}
