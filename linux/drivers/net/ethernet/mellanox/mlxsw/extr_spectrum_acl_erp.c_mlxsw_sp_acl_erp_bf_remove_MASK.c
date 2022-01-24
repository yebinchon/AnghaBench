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
struct objagg_obj {int dummy; } ;
struct mlxsw_sp_acl_erp_mask {int dummy; } ;
struct mlxsw_sp_acl_erp {TYPE_2__* erp_table; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {TYPE_1__* erp_core; } ;
struct TYPE_3__ {int /*<<< orphan*/  bf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_acl_atcam_region*,unsigned int,struct mlxsw_sp_acl_atcam_entry*) ; 
 unsigned int FUNC1 (struct mlxsw_sp_acl_erp const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct mlxsw_sp_acl_erp* FUNC3 (struct objagg_obj*) ; 

void FUNC4(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_acl_atcam_region *aregion,
				struct mlxsw_sp_acl_erp_mask *erp_mask,
				struct mlxsw_sp_acl_atcam_entry *aentry)
{
	struct objagg_obj *objagg_obj = (struct objagg_obj *) erp_mask;
	const struct mlxsw_sp_acl_erp *erp = FUNC3(objagg_obj);
	unsigned int erp_bank;

	if (!FUNC2(erp->erp_table))
		return;

	erp_bank = FUNC1(erp);
	FUNC0(mlxsw_sp,
				  erp->erp_table->erp_core->bf,
				  aregion, erp_bank, aentry);
}