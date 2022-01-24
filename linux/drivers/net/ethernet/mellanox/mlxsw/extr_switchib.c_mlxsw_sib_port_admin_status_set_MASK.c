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
struct mlxsw_sib_port {int /*<<< orphan*/  local_port; struct mlxsw_sib* mlxsw_sib; } ;
struct mlxsw_sib {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_PORT_ADMIN_STATUS_DOWN ; 
 int /*<<< orphan*/  MLXSW_PORT_ADMIN_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PAOS_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  paos ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sib_port *mlxsw_sib_port,
				bool is_up)
{
	struct mlxsw_sib *mlxsw_sib = mlxsw_sib_port->mlxsw_sib;
	char paos_pl[MLXSW_REG_PAOS_LEN];

	FUNC1(paos_pl, mlxsw_sib_port->local_port,
			    is_up ? MLXSW_PORT_ADMIN_STATUS_UP :
			    MLXSW_PORT_ADMIN_STATUS_DOWN);
	return FUNC2(mlxsw_sib->core, FUNC0(paos), paos_pl);
}