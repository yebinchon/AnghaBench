
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct TYPE_8__ {int action; } ;
struct mlx5_flow_table {TYPE_4__ node; TYPE_2__ action; } ;
struct TYPE_7__ {int parent; } ;
struct mlx5_flow_rule {int dest_attr; TYPE_1__ node; } ;
struct mlx5_flow_root_namespace {TYPE_3__* cmds; } ;
struct mlx5_flow_group {TYPE_4__ node; TYPE_2__ action; } ;
struct mlx5_flow_destination {int dummy; } ;
struct fs_fte {TYPE_4__ node; TYPE_2__ action; } ;
struct TYPE_9__ {int (* update_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ;} ;


 int BIT (int ) ;
 int EINVAL ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST ;
 int down_write_ref_node (TYPE_4__*,int) ;
 struct mlx5_flow_root_namespace* find_root (TYPE_4__*) ;
 int fs_get_obj (struct mlx5_flow_table*,int ) ;
 int memcpy (int *,struct mlx5_flow_destination*,int) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ;
 int up_write_ref_node (TYPE_4__*,int) ;

__attribute__((used)) static int _mlx5_modify_rule_destination(struct mlx5_flow_rule *rule,
      struct mlx5_flow_destination *dest)
{
 struct mlx5_flow_root_namespace *root;
 struct mlx5_flow_table *ft;
 struct mlx5_flow_group *fg;
 struct fs_fte *fte;
 int modify_mask = BIT(MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST);
 int err = 0;

 fs_get_obj(fte, rule->node.parent);
 if (!(fte->action.action & MLX5_FLOW_CONTEXT_ACTION_FWD_DEST))
  return -EINVAL;
 down_write_ref_node(&fte->node, 0);
 fs_get_obj(fg, fte->node.parent);
 fs_get_obj(ft, fg->node.parent);

 memcpy(&rule->dest_attr, dest, sizeof(*dest));
 root = find_root(&ft->node);
 err = root->cmds->update_fte(root, ft, fg,
         modify_mask, fte);
 up_write_ref_node(&fte->node, 0);

 return err;
}
