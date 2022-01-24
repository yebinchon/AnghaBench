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
struct mlxsw_sp_port {TYPE_2__* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {int /*<<< orphan*/  flags; TYPE_1__* bridge_device; } ;
typedef  int /*<<< orphan*/  brport_flags ;
struct TYPE_4__ {int /*<<< orphan*/  bridge; } ;
struct TYPE_3__ {scalar_t__ multicast_enabled; } ;

/* Variables and functions */
 unsigned long BR_FLOOD ; 
 unsigned long BR_LEARNING ; 
 unsigned long BR_MCAST_FLOOD ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_MC ; 
 int /*<<< orphan*/  MLXSW_SP_FLOOD_TYPE_UC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long*,int) ; 
 struct mlxsw_sp_bridge_port* FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC2 (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,unsigned long) ; 
 scalar_t__ FUNC4 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
					   struct switchdev_trans *trans,
					   struct net_device *orig_dev,
					   unsigned long brport_flags)
{
	struct mlxsw_sp_bridge_port *bridge_port;
	int err;

	if (FUNC4(trans))
		return 0;

	bridge_port = FUNC1(mlxsw_sp_port->mlxsw_sp->bridge,
						orig_dev);
	if (!bridge_port)
		return 0;

	err = FUNC2(mlxsw_sp_port, bridge_port,
						   MLXSW_SP_FLOOD_TYPE_UC,
						   brport_flags & BR_FLOOD);
	if (err)
		return err;

	err = FUNC3(mlxsw_sp_port, bridge_port,
						brport_flags & BR_LEARNING);
	if (err)
		return err;

	if (bridge_port->bridge_device->multicast_enabled)
		goto out;

	err = FUNC2(mlxsw_sp_port, bridge_port,
						   MLXSW_SP_FLOOD_TYPE_MC,
						   brport_flags &
						   BR_MCAST_FLOOD);
	if (err)
		return err;

out:
	FUNC0(&bridge_port->flags, &brport_flags, sizeof(brport_flags));
	return 0;
}