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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_rif {int /*<<< orphan*/  fid; TYPE_1__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RITR_VLAN_IF ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_BC ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_MC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlxsw_sp_rif*) ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mlxsw_sp_rif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	u16 vid = FUNC0(rif->fid);
	int err;

	err = FUNC5(rif, MLXSW_REG_RITR_VLAN_IF, vid, true);
	if (err)
		return err;

	err = FUNC1(rif->fid, MLXSW_SP_FLOOD_TYPE_MC,
				     FUNC6(mlxsw_sp), true);
	if (err)
		goto err_fid_mc_flood_set;

	err = FUNC1(rif->fid, MLXSW_SP_FLOOD_TYPE_BC,
				     FUNC6(mlxsw_sp), true);
	if (err)
		goto err_fid_bc_flood_set;

	err = FUNC4(rif->mlxsw_sp, rif->dev->dev_addr,
				  FUNC2(rif->fid), true);
	if (err)
		goto err_rif_fdb_op;

	FUNC3(rif->fid, rif);
	return 0;

err_rif_fdb_op:
	FUNC1(rif->fid, MLXSW_SP_FLOOD_TYPE_BC,
			       FUNC6(mlxsw_sp), false);
err_fid_bc_flood_set:
	FUNC1(rif->fid, MLXSW_SP_FLOOD_TYPE_MC,
			       FUNC6(mlxsw_sp), false);
err_fid_mc_flood_set:
	FUNC5(rif, MLXSW_REG_RITR_VLAN_IF, vid, false);
	return err;
}