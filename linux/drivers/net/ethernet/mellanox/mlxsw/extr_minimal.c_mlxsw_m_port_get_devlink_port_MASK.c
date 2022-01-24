#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct mlxsw_m_port {int /*<<< orphan*/  local_port; struct mlxsw_m* mlxsw_m; } ;
struct mlxsw_m {int /*<<< orphan*/  core; } ;
struct devlink_port {int dummy; } ;

/* Variables and functions */
 struct devlink_port* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_m_port* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct devlink_port *
FUNC2(struct net_device *dev)
{
	struct mlxsw_m_port *mlxsw_m_port = FUNC1(dev);
	struct mlxsw_m *mlxsw_m = mlxsw_m_port->mlxsw_m;

	return FUNC0(mlxsw_m->core,
						mlxsw_m_port->local_port);
}