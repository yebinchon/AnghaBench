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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*) ; 
 struct devlink* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct mlxsw_sp *mlxsw_sp)
{
	struct devlink *devlink = FUNC5(mlxsw_sp->core);

	FUNC1(mlxsw_sp);
	FUNC4(mlxsw_sp);
	FUNC3(mlxsw_sp);
	FUNC2(mlxsw_sp);
	FUNC0(devlink);
}