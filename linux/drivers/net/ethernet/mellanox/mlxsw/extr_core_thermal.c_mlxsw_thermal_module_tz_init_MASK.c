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
typedef  int /*<<< orphan*/  tz_name ;
struct mlxsw_thermal_module {int module; int /*<<< orphan*/  mode; int /*<<< orphan*/  tzdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_THERMAL_NUM_TRIPS ; 
 int /*<<< orphan*/  MLXSW_THERMAL_TRIP_MASK ; 
 int MLXSW_THERMAL_ZONE_MAX_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERMAL_DEVICE_ENABLED ; 
 int /*<<< orphan*/  mlxsw_thermal_module_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_thermal_module*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_thermal_module *module_tz)
{
	char tz_name[MLXSW_THERMAL_ZONE_MAX_NAME];
	int err;

	FUNC2(tz_name, sizeof(tz_name), "mlxsw-module%d",
		 module_tz->module + 1);
	module_tz->tzdev = FUNC3(tz_name,
							MLXSW_THERMAL_NUM_TRIPS,
							MLXSW_THERMAL_TRIP_MASK,
							module_tz,
							&mlxsw_thermal_module_ops,
							NULL, 0, 0);
	if (FUNC0(module_tz->tzdev)) {
		err = FUNC1(module_tz->tzdev);
		return err;
	}

	module_tz->mode = THERMAL_DEVICE_ENABLED;
	return 0;
}