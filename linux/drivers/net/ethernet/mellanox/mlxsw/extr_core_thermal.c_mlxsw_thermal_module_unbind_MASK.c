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
struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct thermal_cooling_device {int dummy; } ;
struct mlxsw_thermal_module {struct mlxsw_thermal* parent; } ;
struct mlxsw_thermal {int dummy; } ;

/* Variables and functions */
 int MLXSW_THERMAL_NUM_TRIPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlxsw_thermal*,struct thermal_cooling_device*) ; 
 int FUNC2 (struct thermal_zone_device*,int,struct thermal_cooling_device*) ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *tzdev,
				       struct thermal_cooling_device *cdev)
{
	struct mlxsw_thermal_module *tz = tzdev->devdata;
	struct mlxsw_thermal *thermal = tz->parent;
	int i;
	int err;

	/* If the cooling device is one of ours unbind it */
	if (FUNC1(thermal, cdev) < 0)
		return 0;

	for (i = 0; i < MLXSW_THERMAL_NUM_TRIPS; i++) {
		err = FUNC2(tzdev, i, cdev);
		FUNC0(err);
	}
	return err;
}