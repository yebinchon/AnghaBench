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
typedef  scalar_t__ u32 ;
struct mlxsw_core {int dummy; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_RESOURCE_UNIT_ENTRY ; 
 int /*<<< orphan*/  KVD_DOUBLE_MIN_SIZE ; 
 int /*<<< orphan*/  KVD_SINGLE_MIN_SIZE ; 
 int /*<<< orphan*/  KVD_SIZE ; 
 scalar_t__ FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP1_KVDL_CHUNKS_ALLOC_SIZE ; 
 int /*<<< orphan*/  MLXSW_SP1_KVDL_CHUNKS_SIZE ; 
 int /*<<< orphan*/  MLXSW_SP1_KVDL_LARGE_CHUNKS_ALLOC_SIZE ; 
 int /*<<< orphan*/  MLXSW_SP1_KVDL_LARGE_CHUNKS_SIZE ; 
 int /*<<< orphan*/  MLXSW_SP1_KVDL_SINGLE_ALLOC_SIZE ; 
 int /*<<< orphan*/  MLXSW_SP1_KVDL_SINGLE_SIZE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_CHUNKS ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_LARGE_CHUNKS ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_SINGLES ; 
 int FUNC1 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devlink_resource_size_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_resource_size_params*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct devlink* FUNC3 (struct mlxsw_core*) ; 

int FUNC4(struct mlxsw_core *mlxsw_core)
{
	struct devlink *devlink = FUNC3(mlxsw_core);
	static struct devlink_resource_size_params size_params;
	u32 kvdl_max_size;
	int err;

	kvdl_max_size = FUNC0(mlxsw_core, KVD_SIZE) -
			FUNC0(mlxsw_core, KVD_SINGLE_MIN_SIZE) -
			FUNC0(mlxsw_core, KVD_DOUBLE_MIN_SIZE);

	FUNC2(&size_params, 0, kvdl_max_size,
					  MLXSW_SP1_KVDL_SINGLE_ALLOC_SIZE,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
	err = FUNC1(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_SINGLES,
					MLXSW_SP1_KVDL_SINGLE_SIZE,
					MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE,
					MLXSW_SP_RESOURCE_KVD_LINEAR,
					&size_params);
	if (err)
		return err;

	FUNC2(&size_params, 0, kvdl_max_size,
					  MLXSW_SP1_KVDL_CHUNKS_ALLOC_SIZE,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
	err = FUNC1(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_CHUNKS,
					MLXSW_SP1_KVDL_CHUNKS_SIZE,
					MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS,
					MLXSW_SP_RESOURCE_KVD_LINEAR,
					&size_params);
	if (err)
		return err;

	FUNC2(&size_params, 0, kvdl_max_size,
					  MLXSW_SP1_KVDL_LARGE_CHUNKS_ALLOC_SIZE,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
	err = FUNC1(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_LARGE_CHUNKS,
					MLXSW_SP1_KVDL_LARGE_CHUNKS_SIZE,
					MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS,
					MLXSW_SP_RESOURCE_KVD_LINEAR,
					&size_params);
	return err;
}