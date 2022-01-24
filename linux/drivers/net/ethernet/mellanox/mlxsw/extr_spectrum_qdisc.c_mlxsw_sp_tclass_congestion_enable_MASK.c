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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_CWTPM_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_CWTP_DEFAULT_PROFILE ; 
 int MLXSW_REG_CWTP_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_CWTP_MIN_VALUE ; 
 int /*<<< orphan*/  cwtp ; 
 int /*<<< orphan*/  cwtpm ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mlxsw_sp_port *mlxsw_sp_port,
				  int tclass_num, u32 min, u32 max,
				  u32 probability, bool is_ecn)
{
	char cwtpm_cmd[MLXSW_REG_CWTPM_LEN];
	char cwtp_cmd[MLXSW_REG_CWTP_LEN];
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	int err;

	FUNC1(cwtp_cmd, mlxsw_sp_port->local_port, tclass_num);
	FUNC2(cwtp_cmd, MLXSW_REG_CWTP_DEFAULT_PROFILE,
				    FUNC5(min, MLXSW_REG_CWTP_MIN_VALUE),
				    FUNC5(max, MLXSW_REG_CWTP_MIN_VALUE),
				    probability);

	err = FUNC4(mlxsw_sp->core, FUNC0(cwtp), cwtp_cmd);
	if (err)
		return err;

	FUNC3(cwtpm_cmd, mlxsw_sp_port->local_port, tclass_num,
			     MLXSW_REG_CWTP_DEFAULT_PROFILE, true, is_ecn);

	return FUNC4(mlxsw_sp->core, FUNC0(cwtpm), cwtpm_cmd);
}