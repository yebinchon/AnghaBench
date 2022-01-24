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
struct mlxsw_sp_acl_erp_table {int /*<<< orphan*/  base_index; TYPE_1__* aregion; int /*<<< orphan*/  num_max_atcam_erps; int /*<<< orphan*/  erp_index_bitmap; struct mlxsw_sp_acl_erp_core* erp_core; } ;
struct mlxsw_sp_acl_erp_core {int /*<<< orphan*/  num_erp_banks; } ;
struct mlxsw_sp_acl_erp {scalar_t__ index; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int FUNC4 (struct mlxsw_sp_acl_erp_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlxsw_sp_acl_erp_table*,int) ; 
 int FUNC6 (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_acl_erp_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_acl_erp* FUNC9 (struct mlxsw_sp_acl_erp_table*) ; 

__attribute__((used)) static int
FUNC10(struct mlxsw_sp_acl_erp_table *erp_table)
{
	struct mlxsw_sp_acl_erp_core *erp_core = erp_table->erp_core;
	struct mlxsw_sp_acl_erp *master_rp;
	int err;

	/* Initially, allocate a single eRP row. Expand later as needed */
	err = FUNC4(erp_core, erp_core->num_erp_banks,
					   erp_table->aregion->type,
					   &erp_table->base_index);
	if (err)
		return err;
	erp_table->num_max_atcam_erps = erp_core->num_erp_banks;

	/* Transition the sole RP currently configured (the master RP)
	 * to the eRP table
	 */
	master_rp = FUNC9(erp_table);
	if (!master_rp) {
		err = -EINVAL;
		goto err_table_master_rp;
	}

	/* Make sure the master RP is using a valid index, as
	 * only a single eRP row is currently allocated.
	 */
	master_rp->index = 0;
	FUNC1(master_rp->index, erp_table->erp_index_bitmap);

	err = FUNC6(erp_table, master_rp);
	if (err)
		goto err_table_master_rp_add;

	/* Update Bloom filter before enabling eRP table, as rules
	 * on the master RP were not set to Bloom filter up to this
	 * point.
	 */
	err = FUNC2(erp_table, master_rp);
	if (err)
		goto err_table_bf_add;

	err = FUNC5(erp_table, false);
	if (err)
		goto err_table_enable;

	return 0;

err_table_enable:
	FUNC3(erp_table, master_rp);
err_table_bf_add:
	FUNC7(master_rp);
err_table_master_rp_add:
	FUNC0(master_rp->index, erp_table->erp_index_bitmap);
err_table_master_rp:
	FUNC8(erp_core, erp_table->num_max_atcam_erps,
				    erp_table->aregion->type,
				    erp_table->base_index);
	return err;
}