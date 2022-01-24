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
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/ * ops; } ;
struct mlxsw_sp_acl_erp_key {scalar_t__ ctcam; } ;
struct mlxsw_sp_acl_erp {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 struct mlxsw_sp_acl_erp* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  erp_multiple_masks_ops ; 
 struct mlxsw_sp_acl_erp* FUNC2 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ; 
 struct mlxsw_sp_acl_erp* FUNC3 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_erp*) ; 
 int FUNC5 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int FUNC8 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_acl_erp*) ; 
 int FUNC10 (struct mlxsw_sp_acl_erp_table*) ; 

__attribute__((used)) static struct mlxsw_sp_acl_erp *
FUNC11(struct mlxsw_sp_acl_erp_table *erp_table,
			     struct mlxsw_sp_acl_erp_key *key)
{
	struct mlxsw_sp_acl_erp *erp;
	int err;

	if (key->ctcam)
		return FUNC2(erp_table, key);

	/* Expand the eRP table for the new eRP, if needed */
	err = FUNC10(erp_table);
	if (err)
		return FUNC0(err);

	erp = FUNC3(erp_table, key);
	if (FUNC1(erp))
		return erp;

	err = FUNC5(erp_table, &erp->index);
	if (err)
		goto err_erp_index_get;

	err = FUNC8(erp_table, erp);
	if (err)
		goto err_table_erp_add;

	err = FUNC7(erp_table, erp);
	if (err)
		goto err_region_erp_add;

	erp_table->ops = &erp_multiple_masks_ops;

	return erp;

err_region_erp_add:
	FUNC9(erp);
err_table_erp_add:
	FUNC6(erp_table, erp->index);
err_erp_index_get:
	FUNC4(erp);
	return FUNC0(err);
}