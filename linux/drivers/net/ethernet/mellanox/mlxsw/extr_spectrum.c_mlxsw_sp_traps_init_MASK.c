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
struct mlxsw_sp {int /*<<< orphan*/  listeners_count; int /*<<< orphan*/  listeners; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_listener ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp)
{
	int err;

	err = FUNC1(mlxsw_sp->core);
	if (err)
		return err;

	err = FUNC2(mlxsw_sp->core);
	if (err)
		return err;

	err = FUNC3(mlxsw_sp, mlxsw_sp_listener,
				      FUNC0(mlxsw_sp_listener));
	if (err)
		return err;

	err = FUNC3(mlxsw_sp, mlxsw_sp->listeners,
				      mlxsw_sp->listeners_count);
	if (err)
		goto err_extra_traps_init;

	return 0;

err_extra_traps_init:
	FUNC4(mlxsw_sp, mlxsw_sp_listener,
				  FUNC0(mlxsw_sp_listener));
	return err;
}