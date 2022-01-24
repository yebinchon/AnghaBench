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
struct mlxsw_sx_port {int /*<<< orphan*/  local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_spmlr_learn_mode { ____Placeholder_mlxsw_reg_spmlr_learn_mode } mlxsw_reg_spmlr_learn_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_SPMLR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  spmlr ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sx_port *mlxsw_sx_port,
				    enum mlxsw_reg_spmlr_learn_mode mode)
{
	struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
	char spmlr_pl[MLXSW_REG_SPMLR_LEN];

	FUNC1(spmlr_pl, mlxsw_sx_port->local_port, mode);
	return FUNC2(mlxsw_sx->core, FUNC0(spmlr), spmlr_pl);
}