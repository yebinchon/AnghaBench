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
struct mlx5_flow_steering {int /*<<< orphan*/  dev; } ;
struct mlx5_flow_namespace {int /*<<< orphan*/  node; } ;
struct mlx5_flow_root_namespace {int table_type; int /*<<< orphan*/  chain_lock; struct mlx5_flow_namespace ns; int /*<<< orphan*/  underlay_qpns; struct mlx5_flow_cmds const* cmds; int /*<<< orphan*/  dev; } ;
struct mlx5_flow_cmds {int dummy; } ;
typedef  enum fs_flow_table_type { ____Placeholder_fs_flow_table_type } fs_flow_table_type ;

/* Variables and functions */
 int FS_FT_NIC_RX ; 
 int FS_FT_NIC_TX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX5_ACCEL_IPSEC_CAP_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_namespace*) ; 
 struct mlx5_flow_root_namespace* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5_flow_cmds* FUNC4 (int) ; 
 struct mlx5_flow_cmds* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_root_namespace
*FUNC9(struct mlx5_flow_steering *steering,
		enum fs_flow_table_type table_type)
{
	const struct mlx5_flow_cmds *cmds = FUNC4(table_type);
	struct mlx5_flow_root_namespace *root_ns;
	struct mlx5_flow_namespace *ns;

	if (FUNC3(steering->dev) & MLX5_ACCEL_IPSEC_CAP_DEVICE &&
	    (table_type == FS_FT_NIC_RX || table_type == FS_FT_NIC_TX))
		cmds = FUNC5(table_type);

	/* Create the root namespace */
	root_ns = FUNC2(sizeof(*root_ns), GFP_KERNEL);
	if (!root_ns)
		return NULL;

	root_ns->dev = steering->dev;
	root_ns->table_type = table_type;
	root_ns->cmds = cmds;

	FUNC0(&root_ns->underlay_qpns);

	ns = &root_ns->ns;
	FUNC1(ns);
	FUNC6(&root_ns->chain_lock);
	FUNC8(&ns->node, NULL, NULL);
	FUNC7(&ns->node, NULL);

	return root_ns;
}