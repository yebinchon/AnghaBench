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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_core {int dummy; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_RESOURCE_ID_PARENT_TOP ; 
 int /*<<< orphan*/  DEVLINK_RESOURCE_UNIT_ENTRY ; 
 int EIO ; 
 int /*<<< orphan*/  KVD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_KVD_GRANULARITY ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devlink_resource_size_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink_resource_size_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct devlink* FUNC4 (struct mlxsw_core*) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_core *mlxsw_core)
{
	struct devlink *devlink = FUNC4(mlxsw_core);
	struct devlink_resource_size_params kvd_size_params;
	u32 kvd_size;

	if (!FUNC1(mlxsw_core, KVD_SIZE))
		return -EIO;

	kvd_size = FUNC0(mlxsw_core, KVD_SIZE);
	FUNC3(&kvd_size_params, kvd_size, kvd_size,
					  MLXSW_SP_KVD_GRANULARITY,
					  DEVLINK_RESOURCE_UNIT_ENTRY);

	return FUNC2(devlink, MLXSW_SP_RESOURCE_NAME_KVD,
					 kvd_size, MLXSW_SP_RESOURCE_KVD,
					 DEVLINK_RESOURCE_ID_PARENT_TOP,
					 &kvd_size_params);
}