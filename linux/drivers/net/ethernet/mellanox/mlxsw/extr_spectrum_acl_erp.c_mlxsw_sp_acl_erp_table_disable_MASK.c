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
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  id; } ;
struct mlxsw_sp_acl_erp_table {TYPE_2__* erp_core; TYPE_1__* aregion; } ;
struct mlxsw_sp_acl_erp {int /*<<< orphan*/  id; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_4__ {struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam_region* region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PERERP_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp_acl_erp* FUNC3 (struct mlxsw_sp_acl_erp_table*) ; 
 int /*<<< orphan*/  pererp ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_sp_acl_erp_table *erp_table)
{
	struct mlxsw_sp_acl_tcam_region *region = erp_table->aregion->region;
	struct mlxsw_sp *mlxsw_sp = erp_table->erp_core->mlxsw_sp;
	char pererp_pl[MLXSW_REG_PERERP_LEN];
	struct mlxsw_sp_acl_erp *master_rp;

	master_rp = FUNC3(erp_table);
	/* It is possible we do not have a master RP when we disable the
	 * table when there are no rules in the A-TCAM and the last C-TCAM
	 * rule is deleted
	 */
	FUNC1(pererp_pl, region->id, false, false, 0, 0,
			      master_rp ? master_rp->id : 0);
	FUNC2(mlxsw_sp->core, FUNC0(pererp), pererp_pl);
}