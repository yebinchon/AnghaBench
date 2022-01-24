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
struct mlxsw_sp_acl_erp_table {unsigned int num_max_atcam_erps; unsigned long base_index; scalar_t__ num_ctcam_erps; unsigned int num_atcam_erps; TYPE_1__* aregion; struct mlxsw_sp_acl_erp_core* erp_core; } ;
struct mlxsw_sp_acl_erp_core {unsigned int num_erp_banks; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOBUFS ; 
 unsigned int MLXSW_SP_ACL_ERP_MAX_PER_REGION ; 
 int FUNC0 (struct mlxsw_sp_acl_erp_core*,unsigned int,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC1 (struct mlxsw_sp_acl_erp_table*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl_erp_core*,unsigned int,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct mlxsw_sp_acl_erp_table*) ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_sp_acl_erp_table *erp_table)
{
	unsigned int num_erps, old_num_erps = erp_table->num_max_atcam_erps;
	struct mlxsw_sp_acl_erp_core *erp_core = erp_table->erp_core;
	unsigned long old_base_index = erp_table->base_index;
	bool ctcam_le = erp_table->num_ctcam_erps > 0;
	int err;

	if (erp_table->num_atcam_erps < erp_table->num_max_atcam_erps)
		return 0;

	if (erp_table->num_max_atcam_erps == MLXSW_SP_ACL_ERP_MAX_PER_REGION)
		return -ENOBUFS;

	num_erps = old_num_erps + erp_core->num_erp_banks;
	err = FUNC0(erp_core, num_erps,
					   erp_table->aregion->type,
					   &erp_table->base_index);
	if (err)
		return err;
	erp_table->num_max_atcam_erps = num_erps;

	err = FUNC3(erp_table);
	if (err)
		goto err_table_relocate;

	err = FUNC1(erp_table, ctcam_le);
	if (err)
		goto err_table_enable;

	FUNC2(erp_core, old_num_erps,
				    erp_table->aregion->type, old_base_index);

	return 0;

err_table_enable:
err_table_relocate:
	erp_table->num_max_atcam_erps = old_num_erps;
	FUNC2(erp_core, num_erps,
				    erp_table->aregion->type,
				    erp_table->base_index);
	erp_table->base_index = old_base_index;
	return err;
}