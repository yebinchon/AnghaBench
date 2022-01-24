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
typedef  size_t u8 ;
struct TYPE_2__ {struct ieee_pfc* pfc; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; TYPE_1__ dcb; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct ieee_pfc {int /*<<< orphan*/ * indications; int /*<<< orphan*/ * requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PPCNT_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PPCNT_PRIO_CNT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ppcnt ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
				     u8 prio)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct ieee_pfc *my_pfc = mlxsw_sp_port->dcb.pfc;
	char ppcnt_pl[MLXSW_REG_PPCNT_LEN];
	int err;

	FUNC1(ppcnt_pl, mlxsw_sp_port->local_port,
			     MLXSW_REG_PPCNT_PRIO_CNT, prio);
	err = FUNC4(mlxsw_sp->core, FUNC0(ppcnt), ppcnt_pl);
	if (err)
		return err;

	my_pfc->requests[prio] = FUNC3(ppcnt_pl);
	my_pfc->indications[prio] = FUNC2(ppcnt_pl);

	return 0;
}