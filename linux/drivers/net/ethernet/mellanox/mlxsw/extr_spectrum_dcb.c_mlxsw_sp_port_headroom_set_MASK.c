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
struct net_device {int /*<<< orphan*/  mtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  pfc; struct ieee_ets* ets; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; struct net_device* dev; } ;
struct ieee_ets {int /*<<< orphan*/  prio_tc; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp_port*) ; 
 int FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp_port *mlxsw_sp_port,
				      struct ieee_ets *ets)
{
	bool pause_en = FUNC1(mlxsw_sp_port);
	struct ieee_ets *my_ets = mlxsw_sp_port->dcb.ets;
	struct net_device *dev = mlxsw_sp_port->dev;
	int err;

	/* Create the required PGs, but don't destroy existing ones, as
	 * traffic is still directed to them.
	 */
	err = FUNC0(mlxsw_sp_port, dev->mtu,
					   ets->prio_tc, pause_en,
					   mlxsw_sp_port->dcb.pfc);
	if (err) {
		FUNC4(dev, "Failed to configure port's headroom\n");
		return err;
	}

	err = FUNC3(mlxsw_sp_port, ets->prio_tc);
	if (err) {
		FUNC4(dev, "Failed to set PG-priority mapping\n");
		goto err_port_prio_pg_map;
	}

	err = FUNC2(mlxsw_sp_port, my_ets->prio_tc,
				       ets->prio_tc);
	if (err)
		FUNC5(dev, "Failed to remove ununsed PGs\n");

	return 0;

err_port_prio_pg_map:
	FUNC2(mlxsw_sp_port, ets->prio_tc, my_ets->prio_tc);
	return err;
}