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
struct mlxsw_sp_prefix_usage {int dummy; } ;
struct mlxsw_sp_lpm_tree {int proto; int ref_count; int /*<<< orphan*/  prefix_ref_count; int /*<<< orphan*/  prefix_usage; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;

/* Variables and functions */
 int EBUSY ; 
 struct mlxsw_sp_lpm_tree* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlxsw_sp_prefix_usage*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ; 
 struct mlxsw_sp_lpm_tree* FUNC4 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_prefix_usage*,struct mlxsw_sp_lpm_tree*) ; 

__attribute__((used)) static struct mlxsw_sp_lpm_tree *
FUNC7(struct mlxsw_sp *mlxsw_sp,
			 struct mlxsw_sp_prefix_usage *prefix_usage,
			 enum mlxsw_sp_l3proto proto)
{
	struct mlxsw_sp_lpm_tree *lpm_tree;
	int err;

	lpm_tree = FUNC4(mlxsw_sp);
	if (!lpm_tree)
		return FUNC0(-EBUSY);
	lpm_tree->proto = proto;
	err = FUNC3(mlxsw_sp, lpm_tree);
	if (err)
		return FUNC0(err);

	err = FUNC6(mlxsw_sp, prefix_usage,
						lpm_tree);
	if (err)
		goto err_left_struct_set;
	FUNC1(&lpm_tree->prefix_usage, prefix_usage,
	       sizeof(lpm_tree->prefix_usage));
	FUNC2(&lpm_tree->prefix_ref_count, 0,
	       sizeof(lpm_tree->prefix_ref_count));
	lpm_tree->ref_count = 1;
	return lpm_tree;

err_left_struct_set:
	FUNC5(mlxsw_sp, lpm_tree);
	return FUNC0(err);
}