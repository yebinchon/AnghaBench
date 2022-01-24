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
struct TYPE_2__ {int /*<<< orphan*/  attrs; } ;
struct mlxsw_hwmon {struct device* hwmon_dev; TYPE_1__** groups; int /*<<< orphan*/  attrs; TYPE_1__ group; struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,char*,struct mlxsw_hwmon*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_hwmon*) ; 
 struct mlxsw_hwmon* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_hwmon*) ; 
 int FUNC6 (struct mlxsw_hwmon*) ; 
 int FUNC7 (struct mlxsw_hwmon*) ; 
 int FUNC8 (struct mlxsw_hwmon*) ; 

int FUNC9(struct mlxsw_core *mlxsw_core,
		     const struct mlxsw_bus_info *mlxsw_bus_info,
		     struct mlxsw_hwmon **p_hwmon)
{
	struct mlxsw_hwmon *mlxsw_hwmon;
	struct device *hwmon_dev;
	int err;

	mlxsw_hwmon = FUNC4(sizeof(*mlxsw_hwmon), GFP_KERNEL);
	if (!mlxsw_hwmon)
		return -ENOMEM;
	mlxsw_hwmon->core = mlxsw_core;
	mlxsw_hwmon->bus_info = mlxsw_bus_info;

	err = FUNC8(mlxsw_hwmon);
	if (err)
		goto err_temp_init;

	err = FUNC5(mlxsw_hwmon);
	if (err)
		goto err_fans_init;

	err = FUNC7(mlxsw_hwmon);
	if (err)
		goto err_temp_module_init;

	err = FUNC6(mlxsw_hwmon);
	if (err)
		goto err_temp_gearbox_init;

	mlxsw_hwmon->groups[0] = &mlxsw_hwmon->group;
	mlxsw_hwmon->group.attrs = mlxsw_hwmon->attrs;

	hwmon_dev = FUNC2(mlxsw_bus_info->dev,
						      "mlxsw", mlxsw_hwmon,
						      mlxsw_hwmon->groups);
	if (FUNC0(hwmon_dev)) {
		err = FUNC1(hwmon_dev);
		goto err_hwmon_register;
	}

	mlxsw_hwmon->hwmon_dev = hwmon_dev;
	*p_hwmon = mlxsw_hwmon;
	return 0;

err_hwmon_register:
err_temp_gearbox_init:
err_temp_module_init:
err_fans_init:
err_temp_init:
	FUNC3(mlxsw_hwmon);
	return err;
}