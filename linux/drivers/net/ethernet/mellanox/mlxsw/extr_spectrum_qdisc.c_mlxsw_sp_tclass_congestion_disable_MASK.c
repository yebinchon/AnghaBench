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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_CWTPM_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_CWTPM_RESET_PROFILE ; 
 int /*<<< orphan*/  cwtpm ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp_port *mlxsw_sp_port,
				   int tclass_num)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	char cwtpm_cmd[MLXSW_REG_CWTPM_LEN];

	FUNC1(cwtpm_cmd, mlxsw_sp_port->local_port, tclass_num,
			     MLXSW_REG_CWTPM_RESET_PROFILE, false, false);
	return FUNC2(mlxsw_sp->core, FUNC0(cwtpm), cwtpm_cmd);
}