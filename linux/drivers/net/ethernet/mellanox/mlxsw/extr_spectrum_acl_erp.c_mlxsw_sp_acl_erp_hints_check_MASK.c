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
struct objagg_stats {scalar_t__ root_count; } ;
struct objagg_hints {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  objagg_lock; int /*<<< orphan*/  objagg; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct objagg_stats const*) ; 
 int FUNC1 (struct objagg_stats const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct objagg_stats* FUNC5 (struct objagg_hints*) ; 
 struct objagg_stats* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct objagg_stats const*) ; 

__attribute__((used)) static int
FUNC8(struct mlxsw_sp *mlxsw_sp,
			     struct mlxsw_sp_acl_atcam_region *aregion,
			     struct objagg_hints *hints, bool *p_rehash_needed)
{
	struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
	const struct objagg_stats *ostats;
	const struct objagg_stats *hstats;
	int err;

	*p_rehash_needed = false;

	FUNC3(&erp_table->objagg_lock);
	ostats = FUNC6(erp_table->objagg);
	FUNC4(&erp_table->objagg_lock);
	if (FUNC0(ostats)) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to get ERP stats\n");
		return FUNC1(ostats);
	}

	hstats = FUNC5(hints);
	if (FUNC0(hstats)) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to get ERP hints stats\n");
		err = FUNC1(hstats);
		goto err_hints_stats_get;
	}

	/* Very basic criterion for now. */
	if (hstats->root_count < ostats->root_count)
		*p_rehash_needed = true;

	err = 0;

	FUNC7(hstats);
err_hints_stats_get:
	FUNC7(ostats);
	return err;
}