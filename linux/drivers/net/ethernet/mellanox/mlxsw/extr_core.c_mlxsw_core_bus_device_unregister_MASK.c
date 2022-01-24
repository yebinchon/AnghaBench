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
struct TYPE_4__ {int /*<<< orphan*/  mapping; } ;
struct mlxsw_core {TYPE_3__* driver; int /*<<< orphan*/  bus_priv; TYPE_2__* bus; TYPE_1__ lag; int /*<<< orphan*/  hwmon; int /*<<< orphan*/  thermal; } ;
struct devlink {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* params_unregister ) (struct mlxsw_core*) ;int /*<<< orphan*/  (* fini ) (struct mlxsw_core*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* fini ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink*) ; 
 scalar_t__ FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct devlink* FUNC10 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlxsw_core*) ; 

void FUNC15(struct mlxsw_core *mlxsw_core,
				      bool reload)
{
	struct devlink *devlink = FUNC10(mlxsw_core);

	if (FUNC1(devlink)) {
		if (!reload)
			/* Only the parts that were not de-initialized in the
			 * failed reload attempt need to be de-initialized.
			 */
			goto reload_fail_deinit;
		else
			return;
	}

	if (mlxsw_core->driver->params_unregister)
		FUNC2(devlink);
	FUNC9(mlxsw_core->thermal);
	FUNC7(mlxsw_core->hwmon);
	if (mlxsw_core->driver->fini)
		mlxsw_core->driver->fini(mlxsw_core);
	if (mlxsw_core->driver->params_unregister && !reload)
		mlxsw_core->driver->params_unregister(mlxsw_core);
	if (!reload)
		FUNC4(devlink);
	FUNC6(mlxsw_core);
	FUNC5(mlxsw_core->lag.mapping);
	FUNC8(mlxsw_core);
	if (!reload)
		FUNC3(devlink, NULL);
	mlxsw_core->bus->fini(mlxsw_core->bus_priv);

	return;

reload_fail_deinit:
	if (mlxsw_core->driver->params_unregister)
		mlxsw_core->driver->params_unregister(mlxsw_core);
	FUNC4(devlink);
	FUNC3(devlink, NULL);
	FUNC0(devlink);
}