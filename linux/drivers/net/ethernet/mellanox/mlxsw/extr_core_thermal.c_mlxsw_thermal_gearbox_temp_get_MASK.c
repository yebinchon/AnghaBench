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
typedef  scalar_t__ u16 ;
struct thermal_zone_device {struct mlxsw_thermal_module* devdata; } ;
struct mlxsw_thermal_module {int /*<<< orphan*/  trips; scalar_t__ module; struct mlxsw_thermal* parent; } ;
struct mlxsw_thermal {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLXSW_REG_MTMP_GBOX_INDEX_MIN ; 
 int MLXSW_REG_MTMP_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_thermal*,struct thermal_zone_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtmp ; 

__attribute__((used)) static int FUNC5(struct thermal_zone_device *tzdev,
					  int *p_temp)
{
	struct mlxsw_thermal_module *tz = tzdev->devdata;
	struct mlxsw_thermal *thermal = tz->parent;
	char mtmp_pl[MLXSW_REG_MTMP_LEN];
	u16 index;
	int temp;
	int err;

	index = MLXSW_REG_MTMP_GBOX_INDEX_MIN + tz->module;
	FUNC1(mtmp_pl, index, false, false);

	err = FUNC3(thermal->core, FUNC0(mtmp), mtmp_pl);
	if (err)
		return err;

	FUNC2(mtmp_pl, &temp, NULL, NULL);
	if (temp > 0)
		FUNC4(thermal, tzdev, tz->trips, temp);

	*p_temp = temp;
	return 0;
}