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
typedef  int u8 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PMLP_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pmlp ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp_port *mlxsw_sp_port,
				    u8 module, u8 width, u8 lane)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char pmlp_pl[MLXSW_REG_PMLP_LEN];
	int i;

	FUNC2(pmlp_pl, mlxsw_sp_port->local_port);
	FUNC4(pmlp_pl, width);
	for (i = 0; i < width; i++) {
		FUNC1(pmlp_pl, i, module);
		FUNC3(pmlp_pl, i, lane + i);  /* Rx & Tx */
	}

	return FUNC5(mlxsw_sp->core, FUNC0(pmlp), pmlp_pl);
}