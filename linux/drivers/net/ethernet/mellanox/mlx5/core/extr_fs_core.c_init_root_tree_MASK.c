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
struct mlx5_flow_steering {int dummy; } ;
struct mlx5_flow_namespace {int /*<<< orphan*/  node; } ;
struct init_tree_node {int ar_size; int /*<<< orphan*/ * children; } ;
struct fs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_flow_namespace*,struct fs_node*) ; 
 int FUNC1 (struct mlx5_flow_steering*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct init_tree_node*,int) ; 

__attribute__((used)) static int FUNC2(struct mlx5_flow_steering *steering,
			  struct init_tree_node *init_node,
			  struct fs_node *fs_parent_node)
{
	int i;
	struct mlx5_flow_namespace *fs_ns;
	int err;

	FUNC0(fs_ns, fs_parent_node);
	for (i = 0; i < init_node->ar_size; i++) {
		err = FUNC1(steering, &init_node->children[i],
					       &fs_ns->node,
					       init_node, i);
		if (err)
			return err;
	}
	return 0;
}