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
struct mlxsw_sx {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_DEFAULT_PRIORITY ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_DEFAULT_TC ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_INVALID_POLICER ; 
 int MLXSW_REG_HTGT_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_CTRL ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_RX ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_TRAP_GROUP_SX2_CTRL ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_TRAP_GROUP_SX2_RX ; 
 int /*<<< orphan*/  htgt ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * mlxsw_sx_listener ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sx *mlxsw_sx)
{
	char htgt_pl[MLXSW_REG_HTGT_LEN];
	int i;
	int err;

	FUNC5(htgt_pl, MLXSW_REG_HTGT_TRAP_GROUP_SX2_RX,
			    MLXSW_REG_HTGT_INVALID_POLICER,
			    MLXSW_REG_HTGT_DEFAULT_PRIORITY,
			    MLXSW_REG_HTGT_DEFAULT_TC);
	FUNC4(htgt_pl,
					  MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_RX);

	err = FUNC6(mlxsw_sx->core, FUNC1(htgt), htgt_pl);
	if (err)
		return err;

	FUNC5(htgt_pl, MLXSW_REG_HTGT_TRAP_GROUP_SX2_CTRL,
			    MLXSW_REG_HTGT_INVALID_POLICER,
			    MLXSW_REG_HTGT_DEFAULT_PRIORITY,
			    MLXSW_REG_HTGT_DEFAULT_TC);
	FUNC4(htgt_pl,
					MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_CTRL);

	err = FUNC6(mlxsw_sx->core, FUNC1(htgt), htgt_pl);
	if (err)
		return err;

	for (i = 0; i < FUNC0(mlxsw_sx_listener); i++) {
		err = FUNC2(mlxsw_sx->core,
					       &mlxsw_sx_listener[i],
					       mlxsw_sx);
		if (err)
			goto err_listener_register;

	}
	return 0;

err_listener_register:
	for (i--; i >= 0; i--) {
		FUNC3(mlxsw_sx->core,
					   &mlxsw_sx_listener[i],
					   mlxsw_sx);
	}
	return err;
}