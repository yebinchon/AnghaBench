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
struct thermal_zone_device {struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {int /*<<< orphan*/  trips; int /*<<< orphan*/  core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MTMP_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_thermal*,struct thermal_zone_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtmp ; 

__attribute__((used)) static int FUNC6(struct thermal_zone_device *tzdev,
				  int *p_temp)
{
	struct mlxsw_thermal *thermal = tzdev->devdata;
	struct device *dev = thermal->bus_info->dev;
	char mtmp_pl[MLXSW_REG_MTMP_LEN];
	int temp;
	int err;

	FUNC2(mtmp_pl, 0, false, false);

	err = FUNC4(thermal->core, FUNC0(mtmp), mtmp_pl);
	if (err) {
		FUNC1(dev, "Failed to query temp sensor\n");
		return err;
	}
	FUNC3(mtmp_pl, &temp, NULL, NULL);
	if (temp > 0)
		FUNC5(thermal, tzdev, thermal->trips,
					      temp);

	*p_temp = temp;
	return 0;
}