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
 int FUNC0 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int FUNC2 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*) ; 
 int FUNC4 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_dpipe_headers ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*) ; 
 int FUNC6 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*) ; 
 int FUNC8 (struct mlxsw_sp*) ; 
 struct devlink* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct mlxsw_sp *mlxsw_sp)
{
	struct devlink *devlink = FUNC9(mlxsw_sp->core);
	int err;

	err = FUNC0(devlink,
					     &mlxsw_sp_dpipe_headers);
	if (err)
		return err;
	err = FUNC4(mlxsw_sp);
	if (err)
		goto err_erif_table_init;

	err = FUNC6(mlxsw_sp);
	if (err)
		goto err_host4_table_init;

	err = FUNC8(mlxsw_sp);
	if (err)
		goto err_host6_table_init;

	err = FUNC2(mlxsw_sp);
	if (err)
		goto err_adj_table_init;

	return 0;
err_adj_table_init:
	FUNC7(mlxsw_sp);
err_host6_table_init:
	FUNC5(mlxsw_sp);
err_host4_table_init:
	FUNC3(mlxsw_sp);
err_erif_table_init:
	FUNC1(FUNC9(mlxsw_sp->core));
	return err;
}