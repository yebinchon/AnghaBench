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
struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {int /*<<< orphan*/  trips; scalar_t__ module; struct mlxsw_thermal* parent; } ;
struct mlxsw_thermal {int /*<<< orphan*/  core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MTMP_LEN ; 
 scalar_t__ MLXSW_REG_MTMP_MODULE_INDEX_MIN ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct mlxsw_thermal_module*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_thermal*,struct thermal_zone_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtmp ; 

__attribute__((used)) static int FUNC6(struct thermal_zone_device *tzdev,
					 int *p_temp)
{
	struct mlxsw_thermal_module *tz = tzdev->devdata;
	struct mlxsw_thermal *thermal = tz->parent;
	struct device *dev = thermal->bus_info->dev;
	char mtmp_pl[MLXSW_REG_MTMP_LEN];
	int temp;
	int err;

	/* Read module temperature. */
	FUNC1(mtmp_pl, MLXSW_REG_MTMP_MODULE_INDEX_MIN +
			    tz->module, false, false);
	err = FUNC3(thermal->core, FUNC0(mtmp), mtmp_pl);
	if (err) {
		/* Do not return error - in case of broken module's sensor
		 * it will cause error message flooding.
		 */
		temp = 0;
		*p_temp = (int) temp;
		return 0;
	}
	FUNC2(mtmp_pl, &temp, NULL, NULL);
	*p_temp = temp;

	if (!temp)
		return 0;

	/* Update trip points. */
	err = FUNC4(dev, thermal->core, tz);
	if (!err && temp > 0)
		FUNC5(thermal, tzdev, tz->trips, temp);

	return 0;
}