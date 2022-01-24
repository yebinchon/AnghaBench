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
struct objagg_hints {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  objagg_lock; struct mlxsw_sp_acl_atcam_region* aregion; int /*<<< orphan*/  atcam_erps_list; int /*<<< orphan*/ * ops; int /*<<< orphan*/  erp_core; int /*<<< orphan*/  objagg; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_1__* atcam; } ;
struct TYPE_2__ {int /*<<< orphan*/  erp_core; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_acl_erp_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  erp_no_mask_ops ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_erp_table*) ; 
 struct mlxsw_sp_acl_erp_table* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_erp_objagg_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct objagg_hints*,struct mlxsw_sp_acl_atcam_region*) ; 

__attribute__((used)) static struct mlxsw_sp_acl_erp_table *
FUNC8(struct mlxsw_sp_acl_atcam_region *aregion,
			      struct objagg_hints *hints)
{
	struct mlxsw_sp_acl_erp_table *erp_table;
	int err;

	erp_table = FUNC5(sizeof(*erp_table), GFP_KERNEL);
	if (!erp_table)
		return FUNC0(-ENOMEM);

	erp_table->objagg = FUNC7(&mlxsw_sp_acl_erp_objagg_ops,
					  hints, aregion);
	if (FUNC2(erp_table->objagg)) {
		err = FUNC3(erp_table->objagg);
		goto err_objagg_create;
	}

	erp_table->erp_core = aregion->atcam->erp_core;
	erp_table->ops = &erp_no_mask_ops;
	FUNC1(&erp_table->atcam_erps_list);
	erp_table->aregion = aregion;
	FUNC6(&erp_table->objagg_lock);

	return erp_table;

err_objagg_create:
	FUNC4(erp_table);
	return FUNC0(err);
}