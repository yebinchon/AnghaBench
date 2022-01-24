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
typedef  int u8 ;
struct mlxsw_hwmon {int module_sensor_count; TYPE_1__* bus_info; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_HWMON_ATTR_TYPE_TEMP ; 
 int /*<<< orphan*/  MLXSW_HWMON_ATTR_TYPE_TEMP_GBOX_LABEL ; 
 int /*<<< orphan*/  MLXSW_HWMON_ATTR_TYPE_TEMP_MAX ; 
 int /*<<< orphan*/  MLXSW_HWMON_ATTR_TYPE_TEMP_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MGPIR_LEN ; 
 int MLXSW_REG_MTMP_GBOX_INDEX_MIN ; 
 int MLXSW_REG_MTMP_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mgpir ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_hwmon*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mtmp ; 

__attribute__((used)) static int FUNC8(struct mlxsw_hwmon *mlxsw_hwmon)
{
	int index, max_index, sensor_index;
	char mgpir_pl[MLXSW_REG_MGPIR_LEN];
	char mtmp_pl[MLXSW_REG_MTMP_LEN];
	u8 gbox_num;
	int err;

	FUNC3(mgpir_pl);
	err = FUNC6(mlxsw_hwmon->core, FUNC0(mgpir), mgpir_pl);
	if (err)
		return err;

	FUNC4(mgpir_pl, &gbox_num, NULL, NULL);
	if (!gbox_num)
		return 0;

	index = mlxsw_hwmon->module_sensor_count;
	max_index = mlxsw_hwmon->module_sensor_count + gbox_num;
	while (index < max_index) {
		sensor_index = index % mlxsw_hwmon->module_sensor_count +
			       MLXSW_REG_MTMP_GBOX_INDEX_MIN;
		FUNC5(mtmp_pl, sensor_index, true, true);
		err = FUNC7(mlxsw_hwmon->core,
				      FUNC0(mtmp), mtmp_pl);
		if (err) {
			FUNC1(mlxsw_hwmon->bus_info->dev, "Failed to setup temp sensor number %d\n",
				sensor_index);
			return err;
		}
		FUNC2(mlxsw_hwmon, MLXSW_HWMON_ATTR_TYPE_TEMP,
				     index, index);
		FUNC2(mlxsw_hwmon,
				     MLXSW_HWMON_ATTR_TYPE_TEMP_MAX, index,
				     index);
		FUNC2(mlxsw_hwmon,
				     MLXSW_HWMON_ATTR_TYPE_TEMP_RST, index,
				     index);
		FUNC2(mlxsw_hwmon,
				     MLXSW_HWMON_ATTR_TYPE_TEMP_GBOX_LABEL,
				     index, index);
		index++;
	}

	return 0;
}