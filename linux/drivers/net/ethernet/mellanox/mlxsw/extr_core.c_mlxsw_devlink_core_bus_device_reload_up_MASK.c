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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_core {int /*<<< orphan*/  bus_priv; int /*<<< orphan*/  bus; int /*<<< orphan*/  bus_info; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 struct mlxsw_core* FUNC0 (struct devlink*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct devlink*) ; 

__attribute__((used)) static int
FUNC2(struct devlink *devlink,
					struct netlink_ext_ack *extack)
{
	struct mlxsw_core *mlxsw_core = FUNC0(devlink);

	return FUNC1(mlxsw_core->bus_info,
					      mlxsw_core->bus,
					      mlxsw_core->bus_priv, true,
					      devlink);
}