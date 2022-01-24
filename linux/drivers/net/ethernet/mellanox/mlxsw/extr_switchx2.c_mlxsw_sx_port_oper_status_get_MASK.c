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
typedef  scalar_t__ u8 ;
struct mlxsw_sx_port {int /*<<< orphan*/  local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 scalar_t__ MLXSW_PORT_ADMIN_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PAOS_LEN ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  paos ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sx_port *mlxsw_sx_port,
					 bool *p_is_up)
{
	struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
	char paos_pl[MLXSW_REG_PAOS_LEN];
	u8 oper_status;
	int err;

	FUNC2(paos_pl, mlxsw_sx_port->local_port, 0);
	err = FUNC3(mlxsw_sx->core, FUNC0(paos), paos_pl);
	if (err)
		return err;
	oper_status = FUNC1(paos_pl);
	*p_is_up = oper_status == MLXSW_PORT_ADMIN_STATUS_UP ? true : false;
	return 0;
}