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
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 size_t MLXSW_PORT_CPU_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_port *mlxsw_sp_port =
				mlxsw_sp->ports[MLXSW_PORT_CPU_PORT];

	FUNC1(mlxsw_sp->core);
	mlxsw_sp->ports[MLXSW_PORT_CPU_PORT] = NULL;
	FUNC0(mlxsw_sp_port);
}