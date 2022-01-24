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
struct mlxsw_config_profile {scalar_t__ kvd_hash_single_parts; scalar_t__ kvd_hash_double_parts; scalar_t__ kvd_linear_size; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_RESOURCE_ID_PARENT_TOP ; 
 int EIO ; 
 int /*<<< orphan*/  KVD_SIZE ; 
 scalar_t__ FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_KVD_GRANULARITY ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_HASH_SINGLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD_HASH_DOUBLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD_HASH_SINGLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_NAME_KVD_LINEAR ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devlink_resource_size_params*) ; 
 struct mlxsw_config_profile mlxsw_sp1_config_profile ; 
 int FUNC3 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_core*,struct devlink_resource_size_params*,struct devlink_resource_size_params*,struct devlink_resource_size_params*,struct devlink_resource_size_params*) ; 
 struct devlink* FUNC5 (struct mlxsw_core*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_core *mlxsw_core)
{
	struct devlink *devlink = FUNC5(mlxsw_core);
	struct devlink_resource_size_params hash_single_size_params;
	struct devlink_resource_size_params hash_double_size_params;
	struct devlink_resource_size_params linear_size_params;
	struct devlink_resource_size_params kvd_size_params;
	u32 kvd_size, single_size, double_size, linear_size;
	const struct mlxsw_config_profile *profile;
	int err;

	profile = &mlxsw_sp1_config_profile;
	if (!FUNC1(mlxsw_core, KVD_SIZE))
		return -EIO;

	FUNC4(mlxsw_core, &kvd_size_params,
					      &linear_size_params,
					      &hash_double_size_params,
					      &hash_single_size_params);

	kvd_size = FUNC0(mlxsw_core, KVD_SIZE);
	err = FUNC2(devlink, MLXSW_SP_RESOURCE_NAME_KVD,
					kvd_size, MLXSW_SP_RESOURCE_KVD,
					DEVLINK_RESOURCE_ID_PARENT_TOP,
					&kvd_size_params);
	if (err)
		return err;

	linear_size = profile->kvd_linear_size;
	err = FUNC2(devlink, MLXSW_SP_RESOURCE_NAME_KVD_LINEAR,
					linear_size,
					MLXSW_SP_RESOURCE_KVD_LINEAR,
					MLXSW_SP_RESOURCE_KVD,
					&linear_size_params);
	if (err)
		return err;

	err = FUNC3(mlxsw_core);
	if  (err)
		return err;

	double_size = kvd_size - linear_size;
	double_size *= profile->kvd_hash_double_parts;
	double_size /= profile->kvd_hash_double_parts +
		       profile->kvd_hash_single_parts;
	double_size = FUNC6(double_size, MLXSW_SP_KVD_GRANULARITY);
	err = FUNC2(devlink, MLXSW_SP_RESOURCE_NAME_KVD_HASH_DOUBLE,
					double_size,
					MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE,
					MLXSW_SP_RESOURCE_KVD,
					&hash_double_size_params);
	if (err)
		return err;

	single_size = kvd_size - double_size - linear_size;
	err = FUNC2(devlink, MLXSW_SP_RESOURCE_NAME_KVD_HASH_SINGLE,
					single_size,
					MLXSW_SP_RESOURCE_KVD_HASH_SINGLE,
					MLXSW_SP_RESOURCE_KVD,
					&hash_single_size_params);
	if (err)
		return err;

	return 0;
}