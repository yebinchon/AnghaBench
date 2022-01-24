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
struct TYPE_2__ {scalar_t__ module; } ;
struct mlxsw_sib_port {TYPE_1__ mapping; } ;
typedef  enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;

/* Variables and functions */
 int MLXSW_PORT_OPER_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct mlxsw_sib_port *mlxsw_sib_port,
			     enum mlxsw_reg_pude_oper_status status)
{
	if (status == MLXSW_PORT_OPER_STATUS_UP)
		FUNC0("ib link for port %d - up\n",
			mlxsw_sib_port->mapping.module + 1);
	else
		FUNC0("ib link for port %d - down\n",
			mlxsw_sib_port->mapping.module + 1);
}