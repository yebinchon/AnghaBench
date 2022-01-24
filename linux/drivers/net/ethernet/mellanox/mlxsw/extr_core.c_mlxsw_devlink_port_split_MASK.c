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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_core {unsigned int max_ports; TYPE_1__* driver; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int (* port_split ) (struct mlxsw_core*,unsigned int,unsigned int,struct netlink_ext_ack*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct mlxsw_core* FUNC1 (struct devlink*) ; 
 int FUNC2 (struct mlxsw_core*,unsigned int,unsigned int,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct devlink *devlink,
				    unsigned int port_index,
				    unsigned int count,
				    struct netlink_ext_ack *extack)
{
	struct mlxsw_core *mlxsw_core = FUNC1(devlink);

	if (port_index >= mlxsw_core->max_ports) {
		FUNC0(extack, "Port index exceeds maximum number of ports");
		return -EINVAL;
	}
	if (!mlxsw_core->driver->port_split)
		return -EOPNOTSUPP;
	return mlxsw_core->driver->port_split(mlxsw_core, port_index, count,
					      extack);
}