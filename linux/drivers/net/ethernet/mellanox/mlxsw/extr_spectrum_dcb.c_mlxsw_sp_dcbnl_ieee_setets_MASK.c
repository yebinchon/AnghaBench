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
struct net_device {int dummy; } ;
struct TYPE_3__ {TYPE_2__* ets; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct ieee_ets {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ets_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE_8021QAZ_MAX_TCS ; 
 int FUNC0 (struct mlxsw_sp_port*,struct ieee_ets*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ieee_ets*,int) ; 
 int FUNC2 (struct mlxsw_sp_port*,struct ieee_ets*) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				      struct ieee_ets *ets)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC3(dev);
	int err;

	err = FUNC2(mlxsw_sp_port, ets);
	if (err)
		return err;

	err = FUNC0(mlxsw_sp_port, ets);
	if (err)
		return err;

	FUNC1(mlxsw_sp_port->dcb.ets, ets, sizeof(*ets));
	mlxsw_sp_port->dcb.ets->ets_cap = IEEE_8021QAZ_MAX_TCS;

	return 0;
}