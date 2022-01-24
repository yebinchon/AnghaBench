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
struct notifier_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  interval; int /*<<< orphan*/  dw; } ;
struct mlxsw_sp_bridge {TYPE_2__ fdb_notify; } ;
struct mlxsw_sp {TYPE_1__* bus_info; struct mlxsw_sp_bridge* bridge; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_DEFAULT_AGEING_TIME ; 
 int /*<<< orphan*/  MLXSW_SP_DEFAULT_LEARNING_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_fdb_notify_work ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*) ; 
 struct notifier_block mlxsw_sp_switchdev_blocking_notifier ; 
 int /*<<< orphan*/  mlxsw_sp_switchdev_notifier ; 
 int FUNC4 (struct notifier_block*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_bridge *bridge = mlxsw_sp->bridge;
	struct notifier_block *nb;
	int err;

	err = FUNC2(mlxsw_sp, MLXSW_SP_DEFAULT_AGEING_TIME);
	if (err) {
		FUNC1(mlxsw_sp->bus_info->dev, "Failed to set default ageing time\n");
		return err;
	}

	err = FUNC5(&mlxsw_sp_switchdev_notifier);
	if (err) {
		FUNC1(mlxsw_sp->bus_info->dev, "Failed to register switchdev notifier\n");
		return err;
	}

	nb = &mlxsw_sp_switchdev_blocking_notifier;
	err = FUNC4(nb);
	if (err) {
		FUNC1(mlxsw_sp->bus_info->dev, "Failed to register switchdev blocking notifier\n");
		goto err_register_switchdev_blocking_notifier;
	}

	FUNC0(&bridge->fdb_notify.dw, mlxsw_sp_fdb_notify_work);
	bridge->fdb_notify.interval = MLXSW_SP_DEFAULT_LEARNING_INTERVAL;
	FUNC3(mlxsw_sp);
	return 0;

err_register_switchdev_blocking_notifier:
	FUNC6(&mlxsw_sp_switchdev_notifier);
	return err;
}