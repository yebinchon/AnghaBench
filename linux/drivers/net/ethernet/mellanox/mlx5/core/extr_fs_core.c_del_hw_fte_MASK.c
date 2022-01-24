#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct fs_node* parent; } ;
struct mlx5_flow_table {int /*<<< orphan*/  id; int /*<<< orphan*/  index; TYPE_2__ node; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_flow_group {int /*<<< orphan*/  id; int /*<<< orphan*/  index; TYPE_2__ node; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_node {scalar_t__ active; } ;
struct fs_fte {int /*<<< orphan*/  id; int /*<<< orphan*/  index; TYPE_2__ node; } ;
struct TYPE_4__ {int (* delete_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 struct mlx5_flow_root_namespace* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_table*,struct fs_node*) ; 
 struct mlx5_core_dev* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_table*) ; 

__attribute__((used)) static void FUNC6(struct fs_node *node)
{
	struct mlx5_flow_root_namespace *root;
	struct mlx5_flow_table *ft;
	struct mlx5_flow_group *fg;
	struct mlx5_core_dev *dev;
	struct fs_fte *fte;
	int err;

	FUNC1(fte, node);
	FUNC1(fg, fte->node.parent);
	FUNC1(ft, fg->node.parent);

	FUNC5(fte);
	dev = FUNC2(&ft->node);
	root = FUNC0(&ft->node);
	if (node->active) {
		err = root->cmds->delete_fte(root, ft, fte);
		if (err)
			FUNC3(dev,
				       "flow steering can't delete fte in index %d of flow group id %d\n",
				       fte->index, fg->id);
		node->active = 0;
	}
}