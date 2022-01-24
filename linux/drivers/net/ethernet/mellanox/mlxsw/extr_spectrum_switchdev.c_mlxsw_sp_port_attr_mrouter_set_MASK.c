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
struct switchdev_trans {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {int mrouter; TYPE_2__* bridge_device; } ;
struct TYPE_4__ {int /*<<< orphan*/  multicast_enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_MC ; 
 struct mlxsw_sp_bridge_port* FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC1 (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,int) ; 
 scalar_t__ FUNC3 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp_port *mlxsw_sp_port,
					  struct switchdev_trans *trans,
					  struct net_device *orig_dev,
					  bool is_port_mrouter)
{
	struct mlxsw_sp_bridge_port *bridge_port;
	int err;

	if (FUNC3(trans))
		return 0;

	bridge_port = FUNC0(mlxsw_sp_port->mlxsw_sp->bridge,
						orig_dev);
	if (!bridge_port)
		return 0;

	if (!bridge_port->bridge_device->multicast_enabled)
		goto out;

	err = FUNC1(mlxsw_sp_port, bridge_port,
						   MLXSW_SP_FLOOD_TYPE_MC,
						   is_port_mrouter);
	if (err)
		return err;

	FUNC2(mlxsw_sp_port, bridge_port,
					 is_port_mrouter);
out:
	bridge_port->mrouter = is_port_mrouter;
	return 0;
}