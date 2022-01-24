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
typedef  void objagg_hints ;
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  objagg_lock; int /*<<< orphan*/  objagg; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_2__* region; struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_4__ {struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  OBJAGG_OPT_ALGO_SIMPLE_GREEDY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,void*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

void *
FUNC9(struct mlxsw_sp_acl_atcam_region *aregion)
{
	struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
	struct mlxsw_sp *mlxsw_sp = aregion->region->mlxsw_sp;
	struct objagg_hints *hints;
	bool rehash_needed;
	int err;

	FUNC5(&erp_table->objagg_lock);
	hints = FUNC7(erp_table->objagg,
				 OBJAGG_OPT_ALGO_SIMPLE_GREEDY);
	FUNC6(&erp_table->objagg_lock);
	if (FUNC2(hints)) {
		FUNC3(mlxsw_sp->bus_info->dev, "Failed to create ERP hints\n");
		return FUNC0(hints);
	}
	err = FUNC4(mlxsw_sp, aregion, hints,
					   &rehash_needed);
	if (err)
		goto errout;

	if (!rehash_needed) {
		err = -EAGAIN;
		goto errout;
	}
	return hints;

errout:
	FUNC8(hints);
	return FUNC1(err);
}