
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int id; int node; } ;
struct mlx5_flow_root_namespace {int chain_lock; } ;


 int disconnect_flow_table (struct mlx5_flow_table*) ;
 struct mlx5_flow_root_namespace* find_root (int *) ;
 int get_dev (int *) ;
 int mlx5_core_warn (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ tree_remove_node (int *,int) ;

int mlx5_destroy_flow_table(struct mlx5_flow_table *ft)
{
 struct mlx5_flow_root_namespace *root = find_root(&ft->node);
 int err = 0;

 mutex_lock(&root->chain_lock);
 err = disconnect_flow_table(ft);
 if (err) {
  mutex_unlock(&root->chain_lock);
  return err;
 }
 if (tree_remove_node(&ft->node, 0))
  mlx5_core_warn(get_dev(&ft->node), "Flow table %d wasn't destroyed, refcount > 1\n",
          ft->id);
 mutex_unlock(&root->chain_lock);

 return err;
}
