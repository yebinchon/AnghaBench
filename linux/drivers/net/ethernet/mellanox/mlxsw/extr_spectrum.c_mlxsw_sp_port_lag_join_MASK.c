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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_upper {int /*<<< orphan*/  ref_count; struct net_device* dev; } ;
struct mlxsw_sp_port {int lagged; TYPE_1__* default_vlan; int /*<<< orphan*/  lag_id; int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_2__ {scalar_t__ fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_upper* FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp*,struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp_port *mlxsw_sp_port,
				  struct net_device *lag_dev)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct mlxsw_sp_upper *lag;
	u16 lag_id;
	u8 port_index;
	int err;

	err = FUNC5(mlxsw_sp, lag_dev, &lag_id);
	if (err)
		return err;
	lag = FUNC4(mlxsw_sp, lag_id);
	if (!lag->ref_count) {
		err = FUNC2(mlxsw_sp, lag_id);
		if (err)
			return err;
		lag->dev = lag_dev;
	}

	err = FUNC6(mlxsw_sp, lag_id, &port_index);
	if (err)
		return err;
	err = FUNC1(mlxsw_sp_port, lag_id, port_index);
	if (err)
		goto err_col_port_add;

	FUNC0(mlxsw_sp->core, lag_id, port_index,
				   mlxsw_sp_port->local_port);
	mlxsw_sp_port->lag_id = lag_id;
	mlxsw_sp_port->lagged = 1;
	lag->ref_count++;

	/* Port is no longer usable as a router interface */
	if (mlxsw_sp_port->default_vlan->fid)
		FUNC7(mlxsw_sp_port->default_vlan);

	return 0;

err_col_port_add:
	if (!lag->ref_count)
		FUNC3(mlxsw_sp, lag_id);
	return err;
}