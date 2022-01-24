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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_fid* fid; int /*<<< orphan*/  vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_BLOCKING ; 
 scalar_t__ MLXSW_SP_FID_TYPE_RFID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fid*) ; 
 struct mlxsw_sp_rif* FUNC3 (struct mlxsw_sp_fid*) ; 
 scalar_t__ FUNC4 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_rif*) ; 

void
FUNC8(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan)
{
	struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
	struct mlxsw_sp_fid *fid = mlxsw_sp_port_vlan->fid;
	struct mlxsw_sp_rif *rif = FUNC3(fid);
	u16 vid = mlxsw_sp_port_vlan->vid;

	if (FUNC0(FUNC4(fid) != MLXSW_SP_FID_TYPE_RFID))
		return;

	mlxsw_sp_port_vlan->fid = NULL;
	FUNC6(mlxsw_sp_port, vid, BR_STATE_BLOCKING);
	FUNC5(mlxsw_sp_port, vid, true);
	FUNC1(fid, mlxsw_sp_port, vid);
	FUNC2(fid);
	FUNC7(rif);
}