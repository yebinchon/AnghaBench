
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fs_dr_rule {int num_actions; int * dr_actions; int dr_rule; } ;
struct mlx5_flow_table {int flags; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct fs_fte {struct mlx5_fs_dr_rule fs_dr_rule; } ;
struct TYPE_2__ {int (* delete_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct fs_fte*) ;} ;


 int IS_ERR_OR_NULL (int ) ;
 int kfree (int *) ;
 scalar_t__ mlx5_dr_is_fw_table (int ) ;
 TYPE_1__* mlx5_fs_cmd_get_fw_cmds () ;
 int mlx5dr_action_destroy (int ) ;
 int mlx5dr_rule_destroy (int ) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct fs_fte*) ;

__attribute__((used)) static int mlx5_cmd_dr_delete_fte(struct mlx5_flow_root_namespace *ns,
      struct mlx5_flow_table *ft,
      struct fs_fte *fte)
{
 struct mlx5_fs_dr_rule *rule = &fte->fs_dr_rule;
 int err;
 int i;

 if (mlx5_dr_is_fw_table(ft->flags))
  return mlx5_fs_cmd_get_fw_cmds()->delete_fte(ns, ft, fte);

 err = mlx5dr_rule_destroy(rule->dr_rule);
 if (err)
  return err;

 for (i = 0; i < rule->num_actions; i++)
  if (!IS_ERR_OR_NULL(rule->dr_actions[i]))
   mlx5dr_action_destroy(rule->dr_actions[i]);

 kfree(rule->dr_actions);
 return 0;
}
