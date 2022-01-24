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
struct mlxsw_sp1_mr_tcam_region {int /*<<< orphan*/  rtar_key_type; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RTAR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RTAR_OP_DEALLOCATE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rtar ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp1_mr_tcam_region *mr_tcam_region)
{
	struct mlxsw_sp *mlxsw_sp = mr_tcam_region->mlxsw_sp;
	char rtar_pl[MLXSW_REG_RTAR_LEN];

	FUNC1(rtar_pl, MLXSW_REG_RTAR_OP_DEALLOCATE,
			    mr_tcam_region->rtar_key_type, 0);
	FUNC2(mlxsw_sp->core, FUNC0(rtar), rtar_pl);
}