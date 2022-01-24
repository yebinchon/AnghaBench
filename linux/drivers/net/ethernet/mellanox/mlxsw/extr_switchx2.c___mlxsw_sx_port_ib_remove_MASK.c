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
typedef  size_t u8 ;
struct mlxsw_sx_port {int dummy; } ;
struct mlxsw_sx {struct mlxsw_sx_port** ports; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_PORT_SWID_DISABLED_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sx_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sx_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sx_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
	struct mlxsw_sx_port *mlxsw_sx_port = mlxsw_sx->ports[local_port];

	FUNC1(mlxsw_sx->core, local_port, mlxsw_sx);
	mlxsw_sx->ports[local_port] = NULL;
	FUNC2(mlxsw_sx_port, false);
	FUNC3(mlxsw_sx_port, MLXSW_PORT_SWID_DISABLED_PORT);
	FUNC0(mlxsw_sx_port);
}