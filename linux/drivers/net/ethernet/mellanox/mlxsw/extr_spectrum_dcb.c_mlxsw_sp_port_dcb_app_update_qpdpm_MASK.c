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
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct dcb_ieee_app_dscp_map {int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 short FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_QPDPM_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  qpdpm ; 

__attribute__((used)) static int
FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
				   struct dcb_ieee_app_dscp_map *map)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char qpdpm_pl[MLXSW_REG_QPDPM_LEN];
	short int i;

	FUNC3(qpdpm_pl, mlxsw_sp_port->local_port);
	for (i = 0; i < FUNC0(map->map); ++i)
		FUNC2(qpdpm_pl, i, map->map[i]);
	return FUNC4(mlxsw_sp->core, FUNC1(qpdpm), qpdpm_pl);
}