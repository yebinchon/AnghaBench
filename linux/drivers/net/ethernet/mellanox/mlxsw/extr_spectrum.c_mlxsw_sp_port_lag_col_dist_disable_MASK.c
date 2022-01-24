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
struct mlxsw_sp_port {int /*<<< orphan*/  lag_id; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp_port *mlxsw_sp_port)
{
	int err;

	err = FUNC2(mlxsw_sp_port,
					    mlxsw_sp_port->lag_id);
	if (err)
		return err;

	err = FUNC0(mlxsw_sp_port,
					    mlxsw_sp_port->lag_id);
	if (err)
		goto err_col_port_disable;

	return 0;

err_col_port_disable:
	FUNC1(mlxsw_sp_port, mlxsw_sp_port->lag_id);
	return err;
}