
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_table {int node; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_node {scalar_t__ active; } ;
struct TYPE_2__ {int (* destroy_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;} ;


 struct mlx5_flow_root_namespace* find_root (int *) ;
 int fs_get_obj (struct mlx5_flow_table*,struct fs_node*) ;
 struct mlx5_core_dev* get_dev (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;
 int trace_mlx5_fs_del_ft (struct mlx5_flow_table*) ;

__attribute__((used)) static void del_hw_flow_table(struct fs_node *node)
{
 struct mlx5_flow_root_namespace *root;
 struct mlx5_flow_table *ft;
 struct mlx5_core_dev *dev;
 int err;

 fs_get_obj(ft, node);
 dev = get_dev(&ft->node);
 root = find_root(&ft->node);
 trace_mlx5_fs_del_ft(ft);

 if (node->active) {
  err = root->cmds->destroy_flow_table(root, ft);
  if (err)
   mlx5_core_warn(dev, "flow steering can't destroy ft\n");
 }
}
