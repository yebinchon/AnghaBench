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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_config_profile {scalar_t__ kvd_linear_size; scalar_t__ kvd_hash_single_parts; scalar_t__ kvd_hash_double_parts; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KVD_DOUBLE_MIN_SIZE ; 
 int /*<<< orphan*/  KVD_SINGLE_MIN_SIZE ; 
 int /*<<< orphan*/  KVD_SIZE ; 
 scalar_t__ FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_KVD_GRANULARITY ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_HASH_SINGLE ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct devlink* FUNC3 (struct mlxsw_core*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_core *mlxsw_core,
				  const struct mlxsw_config_profile *profile,
				  u64 *p_single_size, u64 *p_double_size,
				  u64 *p_linear_size)
{
	struct devlink *devlink = FUNC3(mlxsw_core);
	u32 double_size;
	int err;

	if (!FUNC1(mlxsw_core, KVD_SINGLE_MIN_SIZE) ||
	    !FUNC1(mlxsw_core, KVD_DOUBLE_MIN_SIZE))
		return -EIO;

	/* The hash part is what left of the kvd without the
	 * linear part. It is split to the single size and
	 * double size by the parts ratio from the profile.
	 * Both sizes must be a multiplications of the
	 * granularity from the profile. In case the user
	 * provided the sizes they are obtained via devlink.
	 */
	err = FUNC2(devlink,
					MLXSW_SP_RESOURCE_KVD_LINEAR,
					p_linear_size);
	if (err)
		*p_linear_size = profile->kvd_linear_size;

	err = FUNC2(devlink,
					MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE,
					p_double_size);
	if (err) {
		double_size = FUNC0(mlxsw_core, KVD_SIZE) -
			      *p_linear_size;
		double_size *= profile->kvd_hash_double_parts;
		double_size /= profile->kvd_hash_double_parts +
			       profile->kvd_hash_single_parts;
		*p_double_size = FUNC4(double_size,
					   MLXSW_SP_KVD_GRANULARITY);
	}

	err = FUNC2(devlink,
					MLXSW_SP_RESOURCE_KVD_HASH_SINGLE,
					p_single_size);
	if (err)
		*p_single_size = FUNC0(mlxsw_core, KVD_SIZE) -
				 *p_double_size - *p_linear_size;

	/* Check results are legal. */
	if (*p_single_size < FUNC0(mlxsw_core, KVD_SINGLE_MIN_SIZE) ||
	    *p_double_size < FUNC0(mlxsw_core, KVD_DOUBLE_MIN_SIZE) ||
	    FUNC0(mlxsw_core, KVD_SIZE) < *p_linear_size)
		return -EIO;

	return 0;
}