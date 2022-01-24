#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_2__ {int /*<<< orphan*/  shaper_dw; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; TYPE_1__ ptp; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; } ;
struct mlxsw_reg_info {int dummy; } ;
typedef  enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;

/* Variables and functions */
 int MLXSW_PORT_OPER_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct mlxsw_reg_info *reg,
				     char *pude_pl, void *priv)
{
	struct mlxsw_sp *mlxsw_sp = priv;
	struct mlxsw_sp_port *mlxsw_sp_port;
	enum mlxsw_reg_pude_oper_status status;
	u8 local_port;

	local_port = FUNC1(pude_pl);
	mlxsw_sp_port = mlxsw_sp->ports[local_port];
	if (!mlxsw_sp_port)
		return;

	status = FUNC2(pude_pl);
	if (status == MLXSW_PORT_OPER_STATUS_UP) {
		FUNC3(mlxsw_sp_port->dev, "link up\n");
		FUNC5(mlxsw_sp_port->dev);
		FUNC0(&mlxsw_sp_port->ptp.shaper_dw, 0);
	} else {
		FUNC3(mlxsw_sp_port->dev, "link down\n");
		FUNC4(mlxsw_sp_port->dev);
	}
}