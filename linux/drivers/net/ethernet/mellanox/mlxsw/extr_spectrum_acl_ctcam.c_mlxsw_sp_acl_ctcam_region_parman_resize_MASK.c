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
typedef  unsigned long u64 ;
struct mlxsw_sp_acl_tcam_region {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_ctcam_region {struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_TCAM_RULES ; 
 int EINVAL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*,unsigned long) ; 

__attribute__((used)) static int FUNC2(void *priv,
						   unsigned long new_count)
{
	struct mlxsw_sp_acl_ctcam_region *cregion = priv;
	struct mlxsw_sp_acl_tcam_region *region = cregion->region;
	struct mlxsw_sp *mlxsw_sp = region->mlxsw_sp;
	u64 max_tcam_rules;

	max_tcam_rules = FUNC0(mlxsw_sp->core, ACL_MAX_TCAM_RULES);
	if (new_count > max_tcam_rules)
		return -EINVAL;
	return FUNC1(mlxsw_sp, region, new_count);
}