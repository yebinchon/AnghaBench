#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp {TYPE_2__* bus_info; TYPE_1__* router; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*) ; 
 int FUNC2 (struct mlxsw_sp*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	int err;

	if (mlxsw_sp->router->aborted)
		return;
	FUNC0(mlxsw_sp->bus_info->dev, "FIB abort triggered. Note that FIB entries are no longer being offloaded to this device.\n");
	FUNC1(mlxsw_sp);
	mlxsw_sp->router->aborted = true;
	err = FUNC2(mlxsw_sp);
	if (err)
		FUNC0(mlxsw_sp->bus_info->dev, "Failed to set abort trap.\n");
}