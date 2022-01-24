#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct mlxsw_sp_prefix_usage {TYPE_1__ member_0; } ;
struct mlxsw_sp_lpm_tree {void* id; } ;
struct mlxsw_sp {TYPE_3__* router; int /*<<< orphan*/  core; } ;
struct TYPE_5__ {int tree_count; struct mlxsw_sp_lpm_tree* trees; struct mlxsw_sp_lpm_tree** proto_trees; } ;
struct TYPE_6__ {TYPE_2__ lpm; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlxsw_sp_lpm_tree*) ; 
 int /*<<< orphan*/  MAX_LPM_TREES ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MLXSW_SP_L3_PROTO_IPV4 ; 
 size_t MLXSW_SP_L3_PROTO_IPV6 ; 
 void* MLXSW_SP_LPM_TREE_MIN ; 
 int FUNC3 (struct mlxsw_sp_lpm_tree*) ; 
 struct mlxsw_sp_lpm_tree* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_lpm_tree*) ; 
 struct mlxsw_sp_lpm_tree* FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_prefix_usage*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_prefix_usage req_prefix_usage = {{ 0 } };
	struct mlxsw_sp_lpm_tree *lpm_tree;
	u64 max_trees;
	int err, i;

	if (!FUNC2(mlxsw_sp->core, MAX_LPM_TREES))
		return -EIO;

	max_trees = FUNC1(mlxsw_sp->core, MAX_LPM_TREES);
	mlxsw_sp->router->lpm.tree_count = max_trees - MLXSW_SP_LPM_TREE_MIN;
	mlxsw_sp->router->lpm.trees = FUNC4(mlxsw_sp->router->lpm.tree_count,
					     sizeof(struct mlxsw_sp_lpm_tree),
					     GFP_KERNEL);
	if (!mlxsw_sp->router->lpm.trees)
		return -ENOMEM;

	for (i = 0; i < mlxsw_sp->router->lpm.tree_count; i++) {
		lpm_tree = &mlxsw_sp->router->lpm.trees[i];
		lpm_tree->id = i + MLXSW_SP_LPM_TREE_MIN;
	}

	lpm_tree = FUNC6(mlxsw_sp, &req_prefix_usage,
					 MLXSW_SP_L3_PROTO_IPV4);
	if (FUNC0(lpm_tree)) {
		err = FUNC3(lpm_tree);
		goto err_ipv4_tree_get;
	}
	mlxsw_sp->router->lpm.proto_trees[MLXSW_SP_L3_PROTO_IPV4] = lpm_tree;

	lpm_tree = FUNC6(mlxsw_sp, &req_prefix_usage,
					 MLXSW_SP_L3_PROTO_IPV6);
	if (FUNC0(lpm_tree)) {
		err = FUNC3(lpm_tree);
		goto err_ipv6_tree_get;
	}
	mlxsw_sp->router->lpm.proto_trees[MLXSW_SP_L3_PROTO_IPV6] = lpm_tree;

	return 0;

err_ipv6_tree_get:
	lpm_tree = mlxsw_sp->router->lpm.proto_trees[MLXSW_SP_L3_PROTO_IPV4];
	FUNC7(mlxsw_sp, lpm_tree);
err_ipv4_tree_get:
	FUNC5(mlxsw_sp->router->lpm.trees);
	return err;
}