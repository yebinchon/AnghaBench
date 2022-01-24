#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int action; } ;
struct mlx5_flow_table {TYPE_4__ node; TYPE_2__ action; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct mlx5_flow_rule {int /*<<< orphan*/  dest_attr; TYPE_1__ node; } ;
struct mlx5_flow_root_namespace {TYPE_3__* cmds; } ;
struct mlx5_flow_group {TYPE_4__ node; TYPE_2__ action; } ;
struct mlx5_flow_destination {int dummy; } ;
struct fs_fte {TYPE_4__ node; TYPE_2__ action; } ;
struct TYPE_9__ {int (* update_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int /*<<< orphan*/  MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 struct mlx5_flow_root_namespace* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_flow_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mlx5_flow_destination*,int) ; 
 int FUNC5 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC7(struct mlx5_flow_rule *rule,
					 struct mlx5_flow_destination *dest)
{
	struct mlx5_flow_root_namespace *root;
	struct mlx5_flow_table *ft;
	struct mlx5_flow_group *fg;
	struct fs_fte *fte;
	int modify_mask = FUNC0(MLX5_SET_FTE_MODIFY_ENABLE_MASK_DESTINATION_LIST);
	int err = 0;

	FUNC3(fte, rule->node.parent);
	if (!(fte->action.action & MLX5_FLOW_CONTEXT_ACTION_FWD_DEST))
		return -EINVAL;
	FUNC1(&fte->node, false);
	FUNC3(fg, fte->node.parent);
	FUNC3(ft, fg->node.parent);

	FUNC4(&rule->dest_attr, dest, sizeof(*dest));
	root = FUNC2(&ft->node);
	err = root->cmds->update_fte(root, ft, fg,
				     modify_mask, fte);
	FUNC6(&fte->node, false);

	return err;
}