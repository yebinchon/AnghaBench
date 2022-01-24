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
struct TYPE_5__ {scalar_t__ active; struct fs_node* parent; } ;
struct mlx5_flow_table {int /*<<< orphan*/  id; TYPE_2__ node; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_flow_group {int /*<<< orphan*/  id; TYPE_2__ node; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* destroy_flow_group ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 struct mlx5_flow_root_namespace* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_table*,struct fs_node*) ; 
 struct mlx5_core_dev* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_table*) ; 

__attribute__((used)) static void FUNC6(struct fs_node *node)
{
	struct mlx5_flow_root_namespace *root;
	struct mlx5_flow_group *fg;
	struct mlx5_flow_table *ft;
	struct mlx5_core_dev *dev;

	FUNC1(fg, node);
	FUNC1(ft, fg->node.parent);
	dev = FUNC2(&ft->node);
	FUNC5(fg);

	root = FUNC0(&ft->node);
	if (fg->node.active && root->cmds->destroy_flow_group(root, ft, fg))
		FUNC3(dev, "flow steering can't destroy fg %d of ft %d\n",
			       fg->id, ft->id);
}