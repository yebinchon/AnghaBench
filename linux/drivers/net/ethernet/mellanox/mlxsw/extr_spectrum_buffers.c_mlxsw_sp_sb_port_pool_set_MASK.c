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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_port {scalar_t__ local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_core_port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MLXSW_PORT_CPU_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct mlxsw_sp_port* FUNC1 (struct mlxsw_core_port*) ; 
 int FUNC2 (struct mlxsw_sp*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 

int FUNC4(struct mlxsw_core_port *mlxsw_core_port,
			      unsigned int sb_index, u16 pool_index,
			      u32 threshold, struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_port *mlxsw_sp_port =
			FUNC1(mlxsw_core_port);
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	u8 local_port = mlxsw_sp_port->local_port;
	u32 max_buff;
	int err;

	if (local_port == MLXSW_PORT_CPU_PORT) {
		FUNC0(extack, "Changing CPU port's threshold is forbidden");
		return -EINVAL;
	}

	err = FUNC3(mlxsw_sp, pool_index,
				       threshold, &max_buff, extack);
	if (err)
		return err;

	return FUNC2(mlxsw_sp, local_port, pool_index,
				    0, max_buff);
}