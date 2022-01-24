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
struct mlxsw_sp_acl_erp_table {int num_atcam_erps; scalar_t__ num_ctcam_erps; scalar_t__ num_deltas; int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {scalar_t__ ctcam; } ;
struct mlxsw_sp_acl_erp {int /*<<< orphan*/  index; TYPE_1__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  erp_two_masks_ops ; 
 void FUNC0 (struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl_erp_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_erp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_erp*) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp_acl_erp_table *erp_table,
			      struct mlxsw_sp_acl_erp *erp)
{
	if (erp->key.ctcam)
		return FUNC0(erp);

	FUNC3(erp);
	FUNC4(erp);
	FUNC2(erp_table, erp->index);
	FUNC1(erp);

	if (erp_table->num_atcam_erps == 2 && erp_table->num_ctcam_erps == 0 &&
	    erp_table->num_deltas == 0)
		erp_table->ops = &erp_two_masks_ops;
}