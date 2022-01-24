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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp_lpm_tree {int /*<<< orphan*/  prefix_ref_count; int /*<<< orphan*/  id; } ;
struct mlxsw_sp_fib {int proto; } ;
struct mlxsw_sp {TYPE_2__* router; int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
struct TYPE_3__ {struct mlxsw_sp_lpm_tree** proto_trees; } ;
struct TYPE_4__ {TYPE_1__ lpm; struct mlxsw_sp_vr* vrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_VRS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_vr*,int) ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_lpm_tree*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_vr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp *mlxsw_sp,
					 struct mlxsw_sp_fib *fib,
					 struct mlxsw_sp_lpm_tree *new_tree)
{
	enum mlxsw_sp_l3proto proto = fib->proto;
	struct mlxsw_sp_lpm_tree *old_tree;
	u8 old_id, new_id = new_tree->id;
	struct mlxsw_sp_vr *vr;
	int i, err;

	old_tree = mlxsw_sp->router->lpm.proto_trees[proto];
	old_id = old_tree->id;

	for (i = 0; i < FUNC0(mlxsw_sp->core, MAX_VRS); i++) {
		vr = &mlxsw_sp->router->vrs[i];
		if (!FUNC5(vr, proto, old_id))
			continue;
		err = FUNC4(mlxsw_sp,
						   FUNC3(vr, proto),
						   new_tree);
		if (err)
			goto err_tree_replace;
	}

	FUNC1(new_tree->prefix_ref_count, old_tree->prefix_ref_count,
	       sizeof(new_tree->prefix_ref_count));
	mlxsw_sp->router->lpm.proto_trees[proto] = new_tree;
	FUNC2(mlxsw_sp, old_tree);

	return 0;

err_tree_replace:
	for (i--; i >= 0; i--) {
		if (!FUNC5(vr, proto, new_id))
			continue;
		FUNC4(mlxsw_sp,
					     FUNC3(vr, proto),
					     old_tree);
	}
	return err;
}