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
struct mlxsw_sp_fid_ops {int /*<<< orphan*/  (* nve_flood_index_clear ) (struct mlxsw_sp_fid*) ;} ;
struct mlxsw_sp_fid_family {struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {int nve_flood_index_valid; struct mlxsw_sp_fid_family* fid_family; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*) ; 

void FUNC2(struct mlxsw_sp_fid *fid)
{
	struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
	const struct mlxsw_sp_fid_ops *ops = fid_family->ops;

	if (FUNC0(!ops->nve_flood_index_clear || !fid->nve_flood_index_valid))
		return;

	fid->nve_flood_index_valid = false;
	ops->nve_flood_index_clear(fid);
}