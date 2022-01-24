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
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp_mr_table {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_4__ {int /*<<< orphan*/  family; } ;
struct mfc_entry_notifier_info {int /*<<< orphan*/  mfc; TYPE_2__ info; int /*<<< orphan*/  tb_id; } ;
struct TYPE_3__ {scalar_t__ aborted; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_vr*) ; 
 int FUNC1 (struct mlxsw_sp_vr*) ; 
 int FUNC2 (struct mlxsw_sp_mr_table*,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_mr_table* FUNC3 (struct mlxsw_sp_vr*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_vr* FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp,
				     struct mfc_entry_notifier_info *men_info,
				     bool replace)
{
	struct mlxsw_sp_mr_table *mrt;
	struct mlxsw_sp_vr *vr;

	if (mlxsw_sp->router->aborted)
		return 0;

	vr = FUNC4(mlxsw_sp, men_info->tb_id, NULL);
	if (FUNC0(vr))
		return FUNC1(vr);

	mrt = FUNC3(vr, men_info->info.family);
	return FUNC2(mrt, men_info->mfc, replace);
}