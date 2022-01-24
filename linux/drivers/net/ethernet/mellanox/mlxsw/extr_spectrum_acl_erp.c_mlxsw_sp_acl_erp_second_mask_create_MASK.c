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
 int FUNC2 (struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  erp_two_masks_ops ; 
 struct mlxsw_sp_acl_erp* FUNC3 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ; 
 struct mlxsw_sp_acl_erp* FUNC4 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_erp*) ; 
 int FUNC6 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_acl_erp_table*) ; 
 int FUNC10 (struct mlxsw_sp_acl_erp_table*) ; 
 int FUNC11 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp_acl_erp*) ; 

__attribute__((used)) static struct mlxsw_sp_acl_erp *
FUNC13(struct mlxsw_sp_acl_erp_table *erp_table,
				    struct mlxsw_sp_acl_erp_key *key)
{
	struct mlxsw_sp_acl_erp *erp;
	int err;

	if (key->ctcam)
		return FUNC3(erp_table, key);

	/* Transition to use eRP table instead of master mask */
	err = FUNC10(erp_table);
	if (err)
		return FUNC0(err);

	erp = FUNC4(erp_table, key);
	if (FUNC1(erp)) {
		err = FUNC2(erp);
		goto err_erp_create;
	}

	err = FUNC6(erp_table, &erp->index);
	if (err)
		goto err_erp_index_get;

	err = FUNC11(erp_table, erp);
	if (err)
		goto err_table_erp_add;

	err = FUNC8(erp_table, erp);
	if (err)
		goto err_region_erp_add;

	erp_table->ops = &erp_two_masks_ops;

	return erp;

err_region_erp_add:
	FUNC12(erp);
err_table_erp_add:
	FUNC7(erp_table, erp->index);
err_erp_index_get:
	FUNC5(erp);
err_erp_create:
	FUNC9(erp_table);
	return FUNC0(err);
}