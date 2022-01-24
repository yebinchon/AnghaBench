#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  mtu; } ;
struct TYPE_6__ {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_5__ {TYPE_1__* pfc; } ;
struct mlxsw_sp_port {TYPE_3__ link; TYPE_2__ dcb; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct TYPE_4__ {scalar_t__ pfc_en; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlxsw_sp_port*) ; 
 int FUNC2 (struct mlxsw_sp_port*,struct ethtool_pauseparam*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct mlxsw_sp_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
					struct ethtool_pauseparam *pause)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC4(dev);
	bool pause_en = pause->tx_pause || pause->rx_pause;
	int err;

	if (mlxsw_sp_port->dcb.pfc && mlxsw_sp_port->dcb.pfc->pfc_en) {
		FUNC3(dev, "PFC already enabled on port\n");
		return -EINVAL;
	}

	if (pause->autoneg) {
		FUNC3(dev, "PAUSE frames autonegotiation isn't supported\n");
		return -EINVAL;
	}

	err = FUNC0(mlxsw_sp_port, dev->mtu, pause_en);
	if (err) {
		FUNC3(dev, "Failed to configure port's headroom\n");
		return err;
	}

	err = FUNC2(mlxsw_sp_port, pause);
	if (err) {
		FUNC3(dev, "Failed to set PAUSE parameters\n");
		goto err_port_pause_configure;
	}

	mlxsw_sp_port->link.rx_pause = pause->rx_pause;
	mlxsw_sp_port->link.tx_pause = pause->tx_pause;

	return 0;

err_port_pause_configure:
	pause_en = FUNC1(mlxsw_sp_port);
	FUNC0(mlxsw_sp_port, dev->mtu, pause_en);
	return err;
}