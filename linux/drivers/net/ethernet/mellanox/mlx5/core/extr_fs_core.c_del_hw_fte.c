
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct fs_node* parent; } ;
struct mlx5_flow_table {int id; int index; TYPE_2__ node; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_flow_group {int id; int index; TYPE_2__ node; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_node {scalar_t__ active; } ;
struct fs_fte {int id; int index; TYPE_2__ node; } ;
struct TYPE_4__ {int (* delete_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;} ;


 struct mlx5_flow_root_namespace* find_root (TYPE_2__*) ;
 int fs_get_obj (struct mlx5_flow_table*,struct fs_node*) ;
 struct mlx5_core_dev* get_dev (TYPE_2__*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ,int ) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;
 int trace_mlx5_fs_del_fte (struct mlx5_flow_table*) ;

__attribute__((used)) static void del_hw_fte(struct fs_node *node)
{
 struct mlx5_flow_root_namespace *root;
 struct mlx5_flow_table *ft;
 struct mlx5_flow_group *fg;
 struct mlx5_core_dev *dev;
 struct fs_fte *fte;
 int err;

 fs_get_obj(fte, node);
 fs_get_obj(fg, fte->node.parent);
 fs_get_obj(ft, fg->node.parent);

 trace_mlx5_fs_del_fte(fte);
 dev = get_dev(&ft->node);
 root = find_root(&ft->node);
 if (node->active) {
  err = root->cmds->delete_fte(root, ft, fte);
  if (err)
   mlx5_core_warn(dev,
           "flow steering can't delete fte in index %d of flow group id %d\n",
           fte->index, fg->id);
  node->active = 0;
 }
}
