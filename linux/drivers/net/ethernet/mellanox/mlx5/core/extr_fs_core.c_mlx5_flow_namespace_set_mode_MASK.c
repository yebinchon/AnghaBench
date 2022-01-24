#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_flow_namespace {int /*<<< orphan*/  node; } ;
struct mlx5_flow_root_namespace {scalar_t__ table_type; int mode; struct mlx5_flow_cmds const* cmds; int /*<<< orphan*/  dev; struct mlx5_flow_namespace ns; } ;
struct mlx5_flow_cmds {int (* create_ns ) (struct mlx5_flow_root_namespace*) ;int /*<<< orphan*/  (* destroy_ns ) (struct mlx5_flow_root_namespace*) ;} ;
typedef  enum mlx5_flow_steering_mode { ____Placeholder_mlx5_flow_steering_mode } mlx5_flow_steering_mode ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FS_FT_FDB ; 
 int MLX5_FLOW_STEERING_MODE_SMFS ; 
 struct mlx5_flow_root_namespace* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct mlx5_flow_cmds* FUNC2 () ; 
 struct mlx5_flow_cmds* FUNC3 () ; 
 int FUNC4 (struct mlx5_flow_root_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_root_namespace*) ; 

int FUNC6(struct mlx5_flow_namespace *ns,
				 enum mlx5_flow_steering_mode mode)
{
	struct mlx5_flow_root_namespace *root;
	const struct mlx5_flow_cmds *cmds;
	int err;

	root = FUNC0(&ns->node);
	if (&root->ns != ns)
	/* Can't set cmds to non root namespace */
		return -EINVAL;

	if (root->table_type != FS_FT_FDB)
		return -EOPNOTSUPP;

	if (root->mode == mode)
		return 0;

	if (mode == MLX5_FLOW_STEERING_MODE_SMFS)
		cmds = FUNC2();
	else
		cmds = FUNC3();
	if (!cmds)
		return -EOPNOTSUPP;

	err = cmds->create_ns(root);
	if (err) {
		FUNC1(root->dev, "Failed to create flow namespace (%d)\n",
			      err);
		return err;
	}

	root->cmds->destroy_ns(root);
	root->cmds = cmds;
	root->mode = mode;

	return 0;
}