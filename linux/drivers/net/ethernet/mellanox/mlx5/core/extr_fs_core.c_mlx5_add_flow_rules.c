
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int parent; } ;
struct mlx5_flow_table {int lock; int fwd_rules; TYPE_2__ node; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_root_namespace {int chain_lock; } ;
struct mlx5_flow_handle {TYPE_1__** rule; } ;
struct mlx5_flow_destination {struct mlx5_flow_table* ft; int type; } ;
struct mlx5_flow_act {scalar_t__ action; } ;
struct fs_prio {int dummy; } ;
struct TYPE_3__ {scalar_t__ sw_action; int next_ft; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct mlx5_flow_handle* ERR_PTR (int ) ;
 int IS_ERR_OR_NULL (struct mlx5_flow_handle*) ;
 scalar_t__ MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 scalar_t__ MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO ;
 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ;
 struct mlx5_flow_handle* _mlx5_add_flow_rules (struct mlx5_flow_table*,struct mlx5_flow_spec const*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ;
 struct mlx5_flow_table* find_next_chained_ft (struct fs_prio*) ;
 struct mlx5_flow_root_namespace* find_root (TYPE_2__*) ;
 int fs_get_obj (struct fs_prio*,int ) ;
 int fwd_next_prio_supported (struct mlx5_flow_table*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct mlx5_flow_handle *
mlx5_add_flow_rules(struct mlx5_flow_table *ft,
      const struct mlx5_flow_spec *spec,
      struct mlx5_flow_act *flow_act,
      struct mlx5_flow_destination *dest,
      int num_dest)
{
 struct mlx5_flow_root_namespace *root = find_root(&ft->node);
 struct mlx5_flow_destination gen_dest = {};
 struct mlx5_flow_table *next_ft = ((void*)0);
 struct mlx5_flow_handle *handle = ((void*)0);
 u32 sw_action = flow_act->action;
 struct fs_prio *prio;

 fs_get_obj(prio, ft->node.parent);
 if (flow_act->action == MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO) {
  if (!fwd_next_prio_supported(ft))
   return ERR_PTR(-EOPNOTSUPP);
  if (num_dest)
   return ERR_PTR(-EINVAL);
  mutex_lock(&root->chain_lock);
  next_ft = find_next_chained_ft(prio);
  if (next_ft) {
   gen_dest.type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
   gen_dest.ft = next_ft;
   dest = &gen_dest;
   num_dest = 1;
   flow_act->action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
  } else {
   mutex_unlock(&root->chain_lock);
   return ERR_PTR(-EOPNOTSUPP);
  }
 }

 handle = _mlx5_add_flow_rules(ft, spec, flow_act, dest, num_dest);

 if (sw_action == MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO) {
  if (!IS_ERR_OR_NULL(handle) &&
      (list_empty(&handle->rule[0]->next_ft))) {
   mutex_lock(&next_ft->lock);
   list_add(&handle->rule[0]->next_ft,
     &next_ft->fwd_rules);
   mutex_unlock(&next_ft->lock);
   handle->rule[0]->sw_action = MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO;
  }
  mutex_unlock(&root->chain_lock);
 }
 return handle;
}
