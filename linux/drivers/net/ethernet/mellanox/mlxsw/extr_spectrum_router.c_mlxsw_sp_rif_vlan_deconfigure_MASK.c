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
 int /*<<< orphan*/  MLXSW_REG_RITR_VLAN_IF ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_BC ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_MC ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_rif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*) ; 

__attribute__((used)) static void FUNC8(struct mlxsw_sp_rif *rif)
{
	u16 vid = FUNC0(rif->fid);
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_fid *fid = rif->fid;

	FUNC3(fid, NULL);
	FUNC4(rif->mlxsw_sp, rif->dev->dev_addr,
			    FUNC2(fid), false);
	FUNC5(rif);
	FUNC1(rif->fid, MLXSW_SP_FLOOD_TYPE_BC,
			       FUNC7(mlxsw_sp), false);
	FUNC1(rif->fid, MLXSW_SP_FLOOD_TYPE_MC,
			       FUNC7(mlxsw_sp), false);
	FUNC6(rif, MLXSW_REG_RITR_VLAN_IF, vid, false);
}