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

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_RESOURCE_UNIT_ENTRY ; 
 int /*<<< orphan*/  KVD_DOUBLE_MIN_SIZE ; 
 int /*<<< orphan*/  KVD_SINGLE_MIN_SIZE ; 
 int /*<<< orphan*/  KVD_SIZE ; 
 scalar_t__ FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_KVD_GRANULARITY ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_resource_size_params*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_core *mlxsw_core,
				      struct devlink_resource_size_params *kvd_size_params,
				      struct devlink_resource_size_params *linear_size_params,
				      struct devlink_resource_size_params *hash_double_size_params,
				      struct devlink_resource_size_params *hash_single_size_params)
{
	u32 single_size_min = FUNC0(mlxsw_core,
						 KVD_SINGLE_MIN_SIZE);
	u32 double_size_min = FUNC0(mlxsw_core,
						 KVD_DOUBLE_MIN_SIZE);
	u32 kvd_size = FUNC0(mlxsw_core, KVD_SIZE);
	u32 linear_size_min = 0;

	FUNC1(kvd_size_params, kvd_size, kvd_size,
					  MLXSW_SP_KVD_GRANULARITY,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
	FUNC1(linear_size_params, linear_size_min,
					  kvd_size - single_size_min -
					  double_size_min,
					  MLXSW_SP_KVD_GRANULARITY,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
	FUNC1(hash_double_size_params,
					  double_size_min,
					  kvd_size - single_size_min -
					  linear_size_min,
					  MLXSW_SP_KVD_GRANULARITY,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
	FUNC1(hash_single_size_params,
					  single_size_min,
					  kvd_size - double_size_min -
					  linear_size_min,
					  MLXSW_SP_KVD_GRANULARITY,
					  DEVLINK_RESOURCE_UNIT_ENTRY);
}