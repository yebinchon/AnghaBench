
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int node; } ;
struct mlx5_flow_root_namespace {scalar_t__ table_type; int mode; struct mlx5_flow_cmds const* cmds; int dev; struct mlx5_flow_namespace ns; } ;
struct mlx5_flow_cmds {int (* create_ns ) (struct mlx5_flow_root_namespace*) ;int (* destroy_ns ) (struct mlx5_flow_root_namespace*) ;} ;
typedef enum mlx5_flow_steering_mode { ____Placeholder_mlx5_flow_steering_mode } mlx5_flow_steering_mode ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ FS_FT_FDB ;
 int MLX5_FLOW_STEERING_MODE_SMFS ;
 struct mlx5_flow_root_namespace* find_root (int *) ;
 int mlx5_core_err (int ,char*,int) ;
 struct mlx5_flow_cmds* mlx5_fs_cmd_get_dr_cmds () ;
 struct mlx5_flow_cmds* mlx5_fs_cmd_get_fw_cmds () ;
 int stub1 (struct mlx5_flow_root_namespace*) ;
 int stub2 (struct mlx5_flow_root_namespace*) ;

int mlx5_flow_namespace_set_mode(struct mlx5_flow_namespace *ns,
     enum mlx5_flow_steering_mode mode)
{
 struct mlx5_flow_root_namespace *root;
 const struct mlx5_flow_cmds *cmds;
 int err;

 root = find_root(&ns->node);
 if (&root->ns != ns)

  return -EINVAL;

 if (root->table_type != FS_FT_FDB)
  return -EOPNOTSUPP;

 if (root->mode == mode)
  return 0;

 if (mode == MLX5_FLOW_STEERING_MODE_SMFS)
  cmds = mlx5_fs_cmd_get_dr_cmds();
 else
  cmds = mlx5_fs_cmd_get_fw_cmds();
 if (!cmds)
  return -EOPNOTSUPP;

 err = cmds->create_ns(root);
 if (err) {
  mlx5_core_err(root->dev, "Failed to create flow namespace (%d)\n",
         err);
  return err;
 }

 root->cmds->destroy_ns(root);
 root->cmds = cmds;
 root->mode = mode;

 return 0;
}
