#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp_lpm_tree {int /*<<< orphan*/  id; } ;
struct mlxsw_sp_fib {int proto; struct mlxsw_sp_lpm_tree* lpm_tree; struct mlxsw_sp_vr* vr; int /*<<< orphan*/  node_list; int /*<<< orphan*/  ht; } ;
struct mlxsw_sp {TYPE_2__* router; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
struct TYPE_3__ {struct mlxsw_sp_lpm_tree** proto_trees; } ;
struct TYPE_4__ {TYPE_1__ lpm; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_fib* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fib*) ; 
 struct mlxsw_sp_fib* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_fib_ht_params ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_lpm_tree*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_fib*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_sp_fib *FUNC8(struct mlxsw_sp *mlxsw_sp,
						struct mlxsw_sp_vr *vr,
						enum mlxsw_sp_l3proto proto)
{
	struct mlxsw_sp_lpm_tree *lpm_tree;
	struct mlxsw_sp_fib *fib;
	int err;

	lpm_tree = mlxsw_sp->router->lpm.proto_trees[proto];
	fib = FUNC3(sizeof(*fib), GFP_KERNEL);
	if (!fib)
		return FUNC0(-ENOMEM);
	err = FUNC7(&fib->ht, &mlxsw_sp_fib_ht_params);
	if (err)
		goto err_rhashtable_init;
	FUNC1(&fib->node_list);
	fib->proto = proto;
	fib->vr = vr;
	fib->lpm_tree = lpm_tree;
	FUNC4(lpm_tree);
	err = FUNC6(mlxsw_sp, fib, lpm_tree->id);
	if (err)
		goto err_lpm_tree_bind;
	return fib;

err_lpm_tree_bind:
	FUNC5(mlxsw_sp, lpm_tree);
err_rhashtable_init:
	FUNC2(fib);
	return FUNC0(err);
}