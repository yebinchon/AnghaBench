#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_table {int /*<<< orphan*/  node; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_node {scalar_t__ active; } ;
struct TYPE_2__ {int (* destroy_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 struct mlx5_flow_root_namespace* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_table*,struct fs_node*) ; 
 struct mlx5_core_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int FUNC4 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_table*) ; 

__attribute__((used)) static void FUNC6(struct fs_node *node)
{
	struct mlx5_flow_root_namespace *root;
	struct mlx5_flow_table *ft;
	struct mlx5_core_dev *dev;
	int err;

	FUNC1(ft, node);
	dev = FUNC2(&ft->node);
	root = FUNC0(&ft->node);
	FUNC5(ft);

	if (node->active) {
		err = root->cmds->destroy_flow_table(root, ft);
		if (err)
			FUNC3(dev, "flow steering can't destroy ft\n");
	}
}