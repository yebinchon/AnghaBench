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
struct mlxsw_driver {int /*<<< orphan*/  (* trap_fini ) (struct mlxsw_core*,struct devlink_trap const*,void*) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_trap {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 struct mlxsw_core* FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_core*,struct devlink_trap const*,void*) ; 

__attribute__((used)) static void FUNC2(struct devlink *devlink,
				    const struct devlink_trap *trap,
				    void *trap_ctx)
{
	struct mlxsw_core *mlxsw_core = FUNC0(devlink);
	struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;

	if (!mlxsw_driver->trap_fini)
		return;
	mlxsw_driver->trap_fini(mlxsw_core, trap, trap_ctx);
}