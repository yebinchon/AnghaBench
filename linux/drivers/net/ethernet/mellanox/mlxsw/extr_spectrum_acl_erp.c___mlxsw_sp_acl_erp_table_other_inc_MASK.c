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

/* Variables and functions */
 int /*<<< orphan*/  erp_multiple_masks_ops ; 
 int FUNC0 (struct mlxsw_sp_acl_erp_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_erp_table*) ; 

__attribute__((used)) static int
FUNC2(struct mlxsw_sp_acl_erp_table *erp_table,
				   unsigned int *inc_num)
{
	int err;

	/* If there are C-TCAM eRP or deltas in use we need to transition
	 * the region to use eRP table, if it is not already done
	 */
	if (!FUNC1(erp_table)) {
		err = FUNC0(erp_table);
		if (err)
			return err;
	}

	/* When C-TCAM or deltas are used, the eRP table must be used */
	if (erp_table->ops != &erp_multiple_masks_ops)
		erp_table->ops = &erp_multiple_masks_ops;

	(*inc_num)++;

	return 0;
}