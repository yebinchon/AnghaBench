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
struct mlxsw_sp_fid_core {int /*<<< orphan*/  fid_ht; int /*<<< orphan*/  vni_ht; struct mlxsw_sp_fid_core* port_fid_mappings; int /*<<< orphan*/ * fid_family_arr; } ;
struct mlxsw_sp {struct mlxsw_sp_fid_core* fid_core; } ;

/* Variables and functions */
 int MLXSW_SP_FID_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fid_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_fid_core *fid_core = mlxsw_sp->fid_core;
	int i;

	for (i = 0; i < MLXSW_SP_FID_TYPE_MAX; i++)
		FUNC1(mlxsw_sp,
					       fid_core->fid_family_arr[i]);
	FUNC0(fid_core->port_fid_mappings);
	FUNC2(&fid_core->vni_ht);
	FUNC2(&fid_core->fid_ht);
	FUNC0(fid_core);
}