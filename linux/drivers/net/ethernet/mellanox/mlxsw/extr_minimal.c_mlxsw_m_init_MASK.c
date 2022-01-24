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
struct mlxsw_m {struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_m* FUNC1 (struct mlxsw_core*) ; 
 int FUNC2 (struct mlxsw_m*) ; 
 int FUNC3 (struct mlxsw_m*) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_core *mlxsw_core,
			const struct mlxsw_bus_info *mlxsw_bus_info)
{
	struct mlxsw_m *mlxsw_m = FUNC1(mlxsw_core);
	int err;

	mlxsw_m->core = mlxsw_core;
	mlxsw_m->bus_info = mlxsw_bus_info;

	err = FUNC2(mlxsw_m);
	if (err) {
		FUNC0(mlxsw_m->bus_info->dev, "Failed to get base mac\n");
		return err;
	}

	err = FUNC3(mlxsw_m);
	if (err) {
		FUNC0(mlxsw_m->bus_info->dev, "Failed to create ports\n");
		return err;
	}

	return 0;
}