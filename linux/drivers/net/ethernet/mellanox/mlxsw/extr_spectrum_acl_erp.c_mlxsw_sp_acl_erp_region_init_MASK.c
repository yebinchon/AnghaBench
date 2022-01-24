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
struct objagg_hints {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_erp_table*) ; 
 int FUNC1 (struct mlxsw_sp_acl_erp_table*) ; 
 int FUNC2 (struct mlxsw_sp_acl_atcam_region*) ; 
 int FUNC3 (struct mlxsw_sp_acl_atcam_region*) ; 
 struct mlxsw_sp_acl_erp_table* FUNC4 (struct mlxsw_sp_acl_atcam_region*,struct objagg_hints*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_erp_table*) ; 

int FUNC6(struct mlxsw_sp_acl_atcam_region *aregion,
				 void *hints_priv)
{
	struct mlxsw_sp_acl_erp_table *erp_table;
	struct objagg_hints *hints = hints_priv;
	int err;

	erp_table = FUNC4(aregion, hints);
	if (FUNC0(erp_table))
		return FUNC1(erp_table);
	aregion->erp_table = erp_table;

	/* Initialize the region's master mask to all zeroes */
	err = FUNC2(aregion);
	if (err)
		goto err_erp_master_mask_init;

	/* Initialize the region to not use the eRP table */
	err = FUNC3(aregion);
	if (err)
		goto err_erp_region_param_init;

	return 0;

err_erp_region_param_init:
err_erp_master_mask_init:
	FUNC5(erp_table);
	return err;
}