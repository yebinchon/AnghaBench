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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_flow_table_attr {scalar_t__ level; int /*<<< orphan*/  flags; scalar_t__ max_fte; int /*<<< orphan*/  prio; } ;
struct TYPE_5__ {int active; } ;
struct mlx5_flow_table {TYPE_2__ node; int /*<<< orphan*/  def_miss_action; scalar_t__ max_fte; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  chain_lock; TYPE_1__* cmds; int /*<<< orphan*/  dev; int /*<<< orphan*/  table_type; } ;
struct mlx5_flow_namespace {int /*<<< orphan*/  def_miss_action; int /*<<< orphan*/  node; } ;
struct fs_prio {scalar_t__ num_levels; scalar_t__ start_level; int /*<<< orphan*/  node; int /*<<< orphan*/  num_ft; } ;
typedef  enum fs_flow_table_op_mod { ____Placeholder_fs_flow_table_op_mod } fs_flow_table_op_mod ;
struct TYPE_4__ {int (* create_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ;int /*<<< orphan*/  (* destroy_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOSPC ; 
 struct mlx5_flow_table* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_flow_table*) ; 
 int FUNC2 (struct mlx5_flow_table*) ; 
 struct mlx5_flow_table* FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mlx5_flow_table*,struct fs_prio*) ; 
 int /*<<< orphan*/  del_hw_flow_table ; 
 int /*<<< orphan*/  del_sw_flow_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct mlx5_flow_table* FUNC6 (struct fs_prio*) ; 
 struct fs_prio* FUNC7 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_root_namespace* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_flow_table*,struct fs_prio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC22(struct mlx5_flow_namespace *ns,
							struct mlx5_flow_table_attr *ft_attr,
							enum fs_flow_table_op_mod op_mod,
							u16 vport)
{
	struct mlx5_flow_root_namespace *root = FUNC8(&ns->node);
	struct mlx5_flow_table *next_ft = NULL;
	struct fs_prio *fs_prio = NULL;
	struct mlx5_flow_table *ft;
	int log_table_sz;
	int err;

	if (!root) {
		FUNC14("mlx5: flow steering failed to find root of namespace\n");
		return FUNC0(-ENODEV);
	}

	FUNC12(&root->chain_lock);
	fs_prio = FUNC7(ns, ft_attr->prio);
	if (!fs_prio) {
		err = -EINVAL;
		goto unlock_root;
	}
	if (ft_attr->level >= fs_prio->num_levels) {
		err = -ENOSPC;
		goto unlock_root;
	}
	/* The level is related to the
	 * priority level range.
	 */
	ft_attr->level += fs_prio->start_level;
	ft = FUNC3(ft_attr->level,
			      vport,
			      ft_attr->max_fte ? FUNC15(ft_attr->max_fte) : 0,
			      root->table_type,
			      op_mod, ft_attr->flags);
	if (FUNC1(ft)) {
		err = FUNC2(ft);
		goto unlock_root;
	}

	FUNC20(&ft->node, del_hw_flow_table, del_sw_flow_table);
	log_table_sz = ft->max_fte ? FUNC9(ft->max_fte) : 0;
	next_ft = FUNC6(fs_prio);
	ft->def_miss_action = ns->def_miss_action;
	err = root->cmds->create_flow_table(root, ft, log_table_sz, next_ft);
	if (err)
		goto free_ft;

	err = FUNC4(root->dev, ft, fs_prio);
	if (err)
		goto destroy_ft;
	ft->node.active = true;
	FUNC5(&fs_prio->node, false);
	FUNC19(&ft->node, &fs_prio->node);
	FUNC11(ft, fs_prio);
	fs_prio->num_ft++;
	FUNC21(&fs_prio->node, false);
	FUNC13(&root->chain_lock);
	FUNC18(ft);
	return ft;
destroy_ft:
	root->cmds->destroy_flow_table(root, ft);
free_ft:
	FUNC10(ft);
unlock_root:
	FUNC13(&root->chain_lock);
	return FUNC0(err);
}