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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_TNPC_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_TNPC_TUNNEL_PORT_NVE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tnpc ; 

__attribute__((used)) static bool FUNC3(struct mlxsw_sp *mlxsw_sp,
					     bool learning_en)
{
	char tnpc_pl[MLXSW_REG_TNPC_LEN];

	FUNC1(tnpc_pl, MLXSW_REG_TNPC_TUNNEL_PORT_NVE,
			    learning_en);
	return FUNC2(mlxsw_sp->core, FUNC0(tnpc), tnpc_pl);
}