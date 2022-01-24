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
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_PORT_SWID_ALL_SWIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_DEFAULT_PRIORITY ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_DEFAULT_TC ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_INVALID_POLICER ; 
 int MLXSW_REG_HTGT_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_EMAD ; 
 int /*<<< orphan*/  MLXSW_REG_HTGT_TRAP_GROUP_EMAD ; 
 int /*<<< orphan*/  htgt ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_core*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_core *mlxsw_core)
{
	char htgt_pl[MLXSW_REG_HTGT_LEN];

	FUNC2(htgt_pl, MLXSW_REG_HTGT_TRAP_GROUP_EMAD,
			    MLXSW_REG_HTGT_INVALID_POLICER,
			    MLXSW_REG_HTGT_DEFAULT_PRIORITY,
			    MLXSW_REG_HTGT_DEFAULT_TC);
	FUNC3(htgt_pl, MLXSW_PORT_SWID_ALL_SWIDS);
	FUNC1(htgt_pl,
					MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_EMAD);
	return FUNC4(mlxsw_core, FUNC0(htgt), htgt_pl);
}