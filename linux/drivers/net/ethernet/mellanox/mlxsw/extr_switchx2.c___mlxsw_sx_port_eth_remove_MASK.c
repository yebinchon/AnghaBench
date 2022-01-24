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
struct mlxsw_sx_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  pcpu_stats; } ;
struct mlxsw_sx {struct mlxsw_sx_port** ports; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_PORT_SWID_DISABLED_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
	struct mlxsw_sx_port *mlxsw_sx_port = mlxsw_sx->ports[local_port];

	FUNC2(mlxsw_sx->core, local_port, mlxsw_sx);
	FUNC4(mlxsw_sx_port->dev); /* This calls ndo_stop */
	mlxsw_sx->ports[local_port] = NULL;
	FUNC3(mlxsw_sx_port, MLXSW_PORT_SWID_DISABLED_PORT);
	FUNC1(mlxsw_sx_port->pcpu_stats);
	FUNC0(mlxsw_sx_port->dev);
}