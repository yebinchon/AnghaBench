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
struct mlxsw_sib_port {int dummy; } ;
struct mlxsw_sib {TYPE_1__* bus_info; struct mlxsw_sib_port** ports; } ;
struct mlxsw_reg_info {int dummy; } ;
typedef  enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sib_port*,int) ; 

__attribute__((used)) static void FUNC4(const struct mlxsw_reg_info *reg,
				      char *pude_pl, void *priv)
{
	struct mlxsw_sib *mlxsw_sib = priv;
	struct mlxsw_sib_port *mlxsw_sib_port;
	enum mlxsw_reg_pude_oper_status status;
	u8 local_port;

	local_port = FUNC1(pude_pl);
	mlxsw_sib_port = mlxsw_sib->ports[local_port];
	if (!mlxsw_sib_port) {
		FUNC0(mlxsw_sib->bus_info->dev, "Port %d: Link event received for non-existent port\n",
			 local_port);
		return;
	}

	status = FUNC2(pude_pl);
	FUNC3(mlxsw_sib_port, status);
}