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
struct mlxsw_sp_prefix_usage {int dummy; } ;
struct mlxsw_sp_lpm_tree {scalar_t__ ref_count; int proto; int /*<<< orphan*/  prefix_usage; } ;
struct mlxsw_sp {TYPE_2__* router; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
struct TYPE_3__ {int tree_count; struct mlxsw_sp_lpm_tree* trees; } ;
struct TYPE_4__ {TYPE_1__ lpm; } ;

/* Variables and functions */
 struct mlxsw_sp_lpm_tree* FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_prefix_usage*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_lpm_tree*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct mlxsw_sp_prefix_usage*) ; 

__attribute__((used)) static struct mlxsw_sp_lpm_tree *
FUNC3(struct mlxsw_sp *mlxsw_sp,
		      struct mlxsw_sp_prefix_usage *prefix_usage,
		      enum mlxsw_sp_l3proto proto)
{
	struct mlxsw_sp_lpm_tree *lpm_tree;
	int i;

	for (i = 0; i < mlxsw_sp->router->lpm.tree_count; i++) {
		lpm_tree = &mlxsw_sp->router->lpm.trees[i];
		if (lpm_tree->ref_count != 0 &&
		    lpm_tree->proto == proto &&
		    FUNC2(&lpm_tree->prefix_usage,
					     prefix_usage)) {
			FUNC1(lpm_tree);
			return lpm_tree;
		}
	}
	return FUNC0(mlxsw_sp, prefix_usage, proto);
}