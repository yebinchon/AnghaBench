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
struct mlxsw_sx {struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sx* FUNC1 (struct mlxsw_core*) ; 
 int FUNC2 (struct mlxsw_sx*) ; 
 int FUNC3 (struct mlxsw_sx*) ; 
 int FUNC4 (struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sx*) ; 
 int FUNC7 (struct mlxsw_sx*) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_core *mlxsw_core,
			 const struct mlxsw_bus_info *mlxsw_bus_info)
{
	struct mlxsw_sx *mlxsw_sx = FUNC1(mlxsw_core);
	int err;

	mlxsw_sx->core = mlxsw_core;
	mlxsw_sx->bus_info = mlxsw_bus_info;

	err = FUNC3(mlxsw_sx);
	if (err) {
		FUNC0(mlxsw_sx->bus_info->dev, "Failed to get switch HW ID\n");
		return err;
	}

	err = FUNC4(mlxsw_sx);
	if (err) {
		FUNC0(mlxsw_sx->bus_info->dev, "Failed to create ports\n");
		return err;
	}

	err = FUNC7(mlxsw_sx);
	if (err) {
		FUNC0(mlxsw_sx->bus_info->dev, "Failed to set traps\n");
		goto err_listener_register;
	}

	err = FUNC2(mlxsw_sx);
	if (err) {
		FUNC0(mlxsw_sx->bus_info->dev, "Failed to initialize flood tables\n");
		goto err_flood_init;
	}

	return 0;

err_flood_init:
	FUNC6(mlxsw_sx);
err_listener_register:
	FUNC5(mlxsw_sx);
	return err;
}