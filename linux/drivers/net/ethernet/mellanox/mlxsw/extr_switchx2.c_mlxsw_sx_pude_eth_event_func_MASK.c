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
struct mlxsw_sx_port {int /*<<< orphan*/  dev; } ;
typedef  enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;

/* Variables and functions */
 int MLXSW_PORT_OPER_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sx_port *mlxsw_sx_port,
					 enum mlxsw_reg_pude_oper_status status)
{
	if (status == MLXSW_PORT_OPER_STATUS_UP) {
		FUNC0(mlxsw_sx_port->dev, "link up\n");
		FUNC2(mlxsw_sx_port->dev);
	} else {
		FUNC0(mlxsw_sx_port->dev, "link down\n");
		FUNC1(mlxsw_sx_port->dev);
	}
}