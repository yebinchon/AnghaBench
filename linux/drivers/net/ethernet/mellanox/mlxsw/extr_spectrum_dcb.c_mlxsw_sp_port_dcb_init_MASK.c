#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  trust_state; } ;
struct mlxsw_sp_port {TYPE_2__* dev; TYPE_1__ dcb; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dcbnl_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_QPTS_TRUST_STATE_PCP ; 
 int /*<<< orphan*/  mlxsw_sp_dcbnl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_port*) ; 
 int FUNC1 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_port*) ; 
 int FUNC3 (struct mlxsw_sp_port*) ; 
 int FUNC4 (struct mlxsw_sp_port*) ; 

int FUNC5(struct mlxsw_sp_port *mlxsw_sp_port)
{
	int err;

	err = FUNC1(mlxsw_sp_port);
	if (err)
		return err;
	err = FUNC3(mlxsw_sp_port);
	if (err)
		goto err_port_maxrate_init;
	err = FUNC4(mlxsw_sp_port);
	if (err)
		goto err_port_pfc_init;

	mlxsw_sp_port->dcb.trust_state = MLXSW_REG_QPTS_TRUST_STATE_PCP;
	mlxsw_sp_port->dev->dcbnl_ops = &mlxsw_sp_dcbnl_ops;

	return 0;

err_port_pfc_init:
	FUNC2(mlxsw_sp_port);
err_port_maxrate_init:
	FUNC0(mlxsw_sp_port);
	return err;
}