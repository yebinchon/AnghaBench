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
struct mlxsw_sib {struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sib* FUNC1 (struct mlxsw_core*) ; 
 int FUNC2 (struct mlxsw_sib*) ; 
 int FUNC3 (struct mlxsw_sib*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sib*) ; 
 int FUNC5 (struct mlxsw_sib*) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_core *mlxsw_core,
			  const struct mlxsw_bus_info *mlxsw_bus_info)
{
	struct mlxsw_sib *mlxsw_sib = FUNC1(mlxsw_core);
	int err;

	mlxsw_sib->core = mlxsw_core;
	mlxsw_sib->bus_info = mlxsw_bus_info;

	err = FUNC2(mlxsw_sib);
	if (err) {
		FUNC0(mlxsw_sib->bus_info->dev, "Failed to get switch HW ID\n");
		return err;
	}

	err = FUNC3(mlxsw_sib);
	if (err) {
		FUNC0(mlxsw_sib->bus_info->dev, "Failed to create ports\n");
		return err;
	}

	err = FUNC5(mlxsw_sib);
	if (err) {
		FUNC0(mlxsw_sib->bus_info->dev, "Failed to set traps\n");
		goto err_traps_init_err;
	}

	return 0;

err_traps_init_err:
	FUNC4(mlxsw_sib);
	return err;
}