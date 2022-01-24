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
struct net_device {int /*<<< orphan*/  mtu; } ;
struct TYPE_4__ {struct ieee_pfc* pfc; TYPE_1__* ets; } ;
struct mlxsw_sp_port {TYPE_2__ dcb; } ;
struct ieee_pfc {int /*<<< orphan*/  pfc_cap; scalar_t__ pfc_en; } ;
struct TYPE_3__ {int /*<<< orphan*/  prio_tc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IEEE_8021QAZ_MAX_TCS ; 
 int FUNC0 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ieee_pfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_pfc*,struct ieee_pfc*,int) ; 
 int FUNC2 (struct mlxsw_sp_port*) ; 
 int FUNC3 (struct mlxsw_sp_port*,struct ieee_pfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct mlxsw_sp_port* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				      struct ieee_pfc *pfc)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC5(dev);
	bool pause_en = FUNC2(mlxsw_sp_port);
	int err;

	if (pause_en && pfc->pfc_en) {
		FUNC4(dev, "PAUSE frames already enabled on port\n");
		return -EINVAL;
	}

	err = FUNC0(mlxsw_sp_port, dev->mtu,
					   mlxsw_sp_port->dcb.ets->prio_tc,
					   pause_en, pfc);
	if (err) {
		FUNC4(dev, "Failed to configure port's headroom for PFC\n");
		return err;
	}

	err = FUNC3(mlxsw_sp_port, pfc);
	if (err) {
		FUNC4(dev, "Failed to configure PFC\n");
		goto err_port_pfc_set;
	}

	FUNC1(mlxsw_sp_port->dcb.pfc, pfc, sizeof(*pfc));
	mlxsw_sp_port->dcb.pfc->pfc_cap = IEEE_8021QAZ_MAX_TCS;

	return 0;

err_port_pfc_set:
	FUNC0(mlxsw_sp_port, dev->mtu,
				     mlxsw_sp_port->dcb.ets->prio_tc, pause_en,
				     mlxsw_sp_port->dcb.pfc);
	return err;
}