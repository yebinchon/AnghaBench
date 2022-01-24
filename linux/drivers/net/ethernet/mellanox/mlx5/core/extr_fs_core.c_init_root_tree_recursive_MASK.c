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
struct mlx5_flow_steering {int /*<<< orphan*/  dev; } ;
struct fs_node {int dummy; } ;
struct mlx5_flow_namespace {struct fs_node node; } ;
struct init_tree_node {scalar_t__ type; int min_ft_level; int ar_size; scalar_t__ num_leaf_prios; struct init_tree_node* children; int /*<<< orphan*/  def_miss_action; int /*<<< orphan*/  num_levels; int /*<<< orphan*/  caps; } ;
struct fs_prio {struct fs_node node; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_ft_level; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FS_TYPE_NAMESPACE ; 
 scalar_t__ FS_TYPE_PRIO ; 
 scalar_t__ FUNC0 (struct mlx5_flow_namespace*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_flow_namespace*) ; 
 int FUNC3 (struct mlx5_flow_namespace*,int,struct init_tree_node*) ; 
 TYPE_1__ flow_table_properties_nic_receive ; 
 struct mlx5_flow_namespace* FUNC4 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC5 (struct mlx5_flow_namespace*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_flow_namespace*,struct fs_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mlx5_flow_steering *steering,
				    struct init_tree_node *init_node,
				    struct fs_node *fs_parent_node,
				    struct init_tree_node *init_parent_node,
				    int prio)
{
	int max_ft_level = FUNC1(steering->dev,
					      flow_table_properties_nic_receive.
					      max_ft_level);
	struct mlx5_flow_namespace *fs_ns;
	struct fs_prio *fs_prio;
	struct fs_node *base;
	int i;
	int err;

	if (init_node->type == FS_TYPE_PRIO) {
		if ((init_node->min_ft_level > max_ft_level) ||
		    !FUNC7(steering->dev, &init_node->caps))
			return 0;

		FUNC6(fs_ns, fs_parent_node);
		if (init_node->num_leaf_prios)
			return FUNC3(fs_ns, prio, init_node);
		fs_prio = FUNC5(fs_ns, prio, init_node->num_levels);
		if (FUNC0(fs_prio))
			return FUNC2(fs_prio);
		base = &fs_prio->node;
	} else if (init_node->type == FS_TYPE_NAMESPACE) {
		FUNC6(fs_prio, fs_parent_node);
		fs_ns = FUNC4(fs_prio, init_node->def_miss_action);
		if (FUNC0(fs_ns))
			return FUNC2(fs_ns);
		base = &fs_ns->node;
	} else {
		return -EINVAL;
	}
	prio = 0;
	for (i = 0; i < init_node->ar_size; i++) {
		err = FUNC8(steering, &init_node->children[i],
					       base, init_node, prio);
		if (err)
			return err;
		if (init_node->children[i].type == FS_TYPE_PRIO &&
		    init_node->children[i].num_leaf_prios) {
			prio += init_node->children[i].num_leaf_prios;
		}
	}

	return 0;
}