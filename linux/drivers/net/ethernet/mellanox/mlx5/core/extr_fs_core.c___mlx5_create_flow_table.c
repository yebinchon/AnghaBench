
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct mlx5_flow_table_attr {scalar_t__ level; int flags; scalar_t__ max_fte; int prio; } ;
struct TYPE_5__ {int active; } ;
struct mlx5_flow_table {TYPE_2__ node; int def_miss_action; scalar_t__ max_fte; } ;
struct mlx5_flow_root_namespace {int chain_lock; TYPE_1__* cmds; int dev; int table_type; } ;
struct mlx5_flow_namespace {int def_miss_action; int node; } ;
struct fs_prio {scalar_t__ num_levels; scalar_t__ start_level; int node; int num_ft; } ;
typedef enum fs_flow_table_op_mod { ____Placeholder_fs_flow_table_op_mod } fs_flow_table_op_mod ;
struct TYPE_4__ {int (* create_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ;int (* destroy_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOSPC ;
 struct mlx5_flow_table* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int PTR_ERR (struct mlx5_flow_table*) ;
 struct mlx5_flow_table* alloc_flow_table (scalar_t__,int ,int ,int ,int,int ) ;
 int connect_flow_table (int ,struct mlx5_flow_table*,struct fs_prio*) ;
 int del_hw_flow_table ;
 int del_sw_flow_table ;
 int down_write_ref_node (int *,int) ;
 struct mlx5_flow_table* find_next_chained_ft (struct fs_prio*) ;
 struct fs_prio* find_prio (struct mlx5_flow_namespace*,int ) ;
 struct mlx5_flow_root_namespace* find_root (int *) ;
 int ilog2 (scalar_t__) ;
 int kfree (struct mlx5_flow_table*) ;
 int list_add_flow_table (struct mlx5_flow_table*,struct fs_prio*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int roundup_pow_of_two (scalar_t__) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ;
 int stub2 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;
 int trace_mlx5_fs_add_ft (struct mlx5_flow_table*) ;
 int tree_add_node (TYPE_2__*,int *) ;
 int tree_init_node (TYPE_2__*,int ,int ) ;
 int up_write_ref_node (int *,int) ;

__attribute__((used)) static struct mlx5_flow_table *__mlx5_create_flow_table(struct mlx5_flow_namespace *ns,
       struct mlx5_flow_table_attr *ft_attr,
       enum fs_flow_table_op_mod op_mod,
       u16 vport)
{
 struct mlx5_flow_root_namespace *root = find_root(&ns->node);
 struct mlx5_flow_table *next_ft = ((void*)0);
 struct fs_prio *fs_prio = ((void*)0);
 struct mlx5_flow_table *ft;
 int log_table_sz;
 int err;

 if (!root) {
  pr_err("mlx5: flow steering failed to find root of namespace\n");
  return ERR_PTR(-ENODEV);
 }

 mutex_lock(&root->chain_lock);
 fs_prio = find_prio(ns, ft_attr->prio);
 if (!fs_prio) {
  err = -EINVAL;
  goto unlock_root;
 }
 if (ft_attr->level >= fs_prio->num_levels) {
  err = -ENOSPC;
  goto unlock_root;
 }



 ft_attr->level += fs_prio->start_level;
 ft = alloc_flow_table(ft_attr->level,
         vport,
         ft_attr->max_fte ? roundup_pow_of_two(ft_attr->max_fte) : 0,
         root->table_type,
         op_mod, ft_attr->flags);
 if (IS_ERR(ft)) {
  err = PTR_ERR(ft);
  goto unlock_root;
 }

 tree_init_node(&ft->node, del_hw_flow_table, del_sw_flow_table);
 log_table_sz = ft->max_fte ? ilog2(ft->max_fte) : 0;
 next_ft = find_next_chained_ft(fs_prio);
 ft->def_miss_action = ns->def_miss_action;
 err = root->cmds->create_flow_table(root, ft, log_table_sz, next_ft);
 if (err)
  goto free_ft;

 err = connect_flow_table(root->dev, ft, fs_prio);
 if (err)
  goto destroy_ft;
 ft->node.active = 1;
 down_write_ref_node(&fs_prio->node, 0);
 tree_add_node(&ft->node, &fs_prio->node);
 list_add_flow_table(ft, fs_prio);
 fs_prio->num_ft++;
 up_write_ref_node(&fs_prio->node, 0);
 mutex_unlock(&root->chain_lock);
 trace_mlx5_fs_add_ft(ft);
 return ft;
destroy_ft:
 root->cmds->destroy_flow_table(root, ft);
free_ft:
 kfree(ft);
unlock_root:
 mutex_unlock(&root->chain_lock);
 return ERR_PTR(err);
}
