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
 int /*<<< orphan*/  MLXSW_SP_DPIPE_TABLE_NAME_HOST6 ; 
 int /*<<< orphan*/  MLXSW_SP_DPIPE_TABLE_RESOURCE_UNIT_HOST6 ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE ; 
 int FUNC0 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlxsw_sp*,int) ; 
 int FUNC1 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_host6_ops ; 
 struct devlink* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp)
{
	struct devlink *devlink = FUNC3(mlxsw_sp->core);
	int err;

	err = FUNC0(devlink,
					   MLXSW_SP_DPIPE_TABLE_NAME_HOST6,
					   &mlxsw_sp_host6_ops,
					   mlxsw_sp, false);
	if (err)
		return err;

	err = FUNC1(devlink,
					       MLXSW_SP_DPIPE_TABLE_NAME_HOST6,
					       MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE,
					       MLXSW_SP_DPIPE_TABLE_RESOURCE_UNIT_HOST6);
	if (err)
		goto err_resource_set;

	return 0;

err_resource_set:
	FUNC2(devlink,
				       MLXSW_SP_DPIPE_TABLE_NAME_HOST6);
	return err;
}