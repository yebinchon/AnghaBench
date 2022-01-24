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
struct mlxsw_sp_rif {struct mlxsw_sp_fid* fid; TYPE_1__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RITR_FID_IF ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_BC ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_MC ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_rif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*) ; 

__attribute__((used)) static void FUNC7(struct mlxsw_sp_rif *rif)
{
	u16 fid_index = FUNC1(rif->fid);
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_fid *fid = rif->fid;

	FUNC2(fid, NULL);
	FUNC3(rif->mlxsw_sp, rif->dev->dev_addr,
			    FUNC1(fid), false);
	FUNC4(rif);
	FUNC0(rif->fid, MLXSW_SP_FLOOD_TYPE_BC,
			       FUNC6(mlxsw_sp), false);
	FUNC0(rif->fid, MLXSW_SP_FLOOD_TYPE_MC,
			       FUNC6(mlxsw_sp), false);
	FUNC5(rif, MLXSW_REG_RITR_FID_IF, fid_index, false);
}