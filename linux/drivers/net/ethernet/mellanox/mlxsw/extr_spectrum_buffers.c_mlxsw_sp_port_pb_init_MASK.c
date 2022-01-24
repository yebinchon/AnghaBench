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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int width; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; TYPE_1__ mapping; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int MLXSW_PORT_MAX_MTU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PBMC_LEN ; 
 int MLXSW_REG_PBMC_PORT_SHARED_BUF_IDX ; 
 int MLXSW_SP_PB_HEADROOM ; 
 int MLXSW_SP_PB_UNUSED ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,int const) ; 
 int /*<<< orphan*/  pbmc ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp_port *mlxsw_sp_port)
{
	const u32 pbs[] = {
		[0] = MLXSW_SP_PB_HEADROOM * mlxsw_sp_port->mapping.width,
		[9] = MLXSW_PORT_MAX_MTU,
	};
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char pbmc_pl[MLXSW_REG_PBMC_LEN];
	int i;

	FUNC3(pbmc_pl, mlxsw_sp_port->local_port,
			    0xffff, 0xffff / 2);
	for (i = 0; i < FUNC0(pbs); i++) {
		u16 size = FUNC5(mlxsw_sp, pbs[i]);

		if (i == MLXSW_SP_PB_UNUSED)
			continue;
		FUNC2(pbmc_pl, i, size);
	}
	FUNC2(pbmc_pl,
					 MLXSW_REG_PBMC_PORT_SHARED_BUF_IDX, 0);
	return FUNC4(mlxsw_sp->core, FUNC1(pbmc), pbmc_pl);
}