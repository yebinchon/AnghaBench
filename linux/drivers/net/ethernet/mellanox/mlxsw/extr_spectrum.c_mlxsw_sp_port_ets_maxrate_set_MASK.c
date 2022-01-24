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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_qeec_hr { ____Placeholder_mlxsw_reg_qeec_hr } mlxsw_reg_qeec_hr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_QEEC_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  qeec ; 

int FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
				  enum mlxsw_reg_qeec_hr hr, u8 index,
				  u8 next_index, u32 maxrate)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char qeec_pl[MLXSW_REG_QEEC_LEN];

	FUNC3(qeec_pl, mlxsw_sp_port->local_port, hr, index,
			    next_index);
	FUNC1(qeec_pl, true);
	FUNC2(qeec_pl, maxrate);
	return FUNC4(mlxsw_sp->core, FUNC0(qeec), qeec_pl);
}