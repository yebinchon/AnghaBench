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
struct mlxsw_m_port {int /*<<< orphan*/  dev; } ;
struct mlxsw_m {int /*<<< orphan*/  core; struct mlxsw_m_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,struct mlxsw_m*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_m *mlxsw_m, u8 local_port)
{
	struct mlxsw_m_port *mlxsw_m_port = mlxsw_m->ports[local_port];

	FUNC1(mlxsw_m->core, local_port, mlxsw_m);
	FUNC3(mlxsw_m_port->dev); /* This calls ndo_stop */
	mlxsw_m->ports[local_port] = NULL;
	FUNC0(mlxsw_m_port->dev);
	FUNC2(mlxsw_m->core, local_port);
}