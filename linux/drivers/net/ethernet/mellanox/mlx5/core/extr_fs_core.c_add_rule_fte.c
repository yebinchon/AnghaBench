
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_flow_handle {int num_rules; } ;
struct TYPE_6__ {int parent; } ;
struct mlx5_flow_group {TYPE_3__ node; } ;
struct mlx5_flow_destination {int dummy; } ;
struct TYPE_5__ {int active; int version; } ;
struct fs_fte {int status; TYPE_2__ node; } ;
struct TYPE_4__ {int (* create_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_group*,struct fs_fte*) ;int (* update_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_group*,int,struct fs_fte*) ;} ;


 int BIT (int ) ;
 struct mlx5_flow_handle* ERR_PTR (int) ;
 int FS_FTE_STATUS_EXISTING ;
 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 int MLX5_SET_FTE_MODIFY_ENABLE_MASK_ACTION ;
 int atomic_inc (int *) ;
 struct mlx5_flow_handle* create_flow_handle (struct fs_fte*,struct mlx5_flow_destination*,int,int*,int*) ;
 int destroy_flow_handle (struct fs_fte*,struct mlx5_flow_handle*,struct mlx5_flow_destination*,int ) ;
 struct mlx5_flow_root_namespace* find_root (TYPE_3__*) ;
 int fs_get_obj (struct mlx5_flow_table*,int ) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_group*,struct fs_fte*) ;
 int stub2 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_group*,int,struct fs_fte*) ;

__attribute__((used)) static struct mlx5_flow_handle *
add_rule_fte(struct fs_fte *fte,
      struct mlx5_flow_group *fg,
      struct mlx5_flow_destination *dest,
      int dest_num,
      bool update_action)
{
 struct mlx5_flow_root_namespace *root;
 struct mlx5_flow_handle *handle;
 struct mlx5_flow_table *ft;
 int modify_mask = 0;
 int err;
 bool new_rule = 0;

 handle = create_flow_handle(fte, dest, dest_num, &modify_mask,
        &new_rule);
 if (IS_ERR(handle) || !new_rule)
  goto out;

 if (update_action)
  modify_mask |= BIT(MLX5_SET_FTE_MODIFY_ENABLE_MASK_ACTION);

 fs_get_obj(ft, fg->node.parent);
 root = find_root(&fg->node);
 if (!(fte->status & FS_FTE_STATUS_EXISTING))
  err = root->cmds->create_fte(root, ft, fg, fte);
 else
  err = root->cmds->update_fte(root, ft, fg, modify_mask, fte);
 if (err)
  goto free_handle;

 fte->node.active = 1;
 fte->status |= FS_FTE_STATUS_EXISTING;
 atomic_inc(&fte->node.version);

out:
 return handle;

free_handle:
 destroy_flow_handle(fte, handle, dest, handle->num_rules);
 return ERR_PTR(err);
}
