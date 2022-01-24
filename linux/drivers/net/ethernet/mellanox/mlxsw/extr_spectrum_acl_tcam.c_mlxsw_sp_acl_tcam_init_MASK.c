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
struct mlxsw_sp_acl_tcam_ops {int (* init ) (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_acl_tcam*) ;} ;
struct mlxsw_sp_acl_tcam {void* used_regions; void* used_groups; int /*<<< orphan*/  priv; void* max_group_size; scalar_t__ max_groups; scalar_t__ max_regions; int /*<<< orphan*/  vregion_list; int /*<<< orphan*/  vregion_rehash_intrvl; int /*<<< orphan*/  lock; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_GROUPS ; 
 int /*<<< orphan*/  ACL_MAX_GROUP_SIZE ; 
 int /*<<< orphan*/  ACL_MAX_REGIONS ; 
 int /*<<< orphan*/  ACL_MAX_TCAM_REGIONS ; 
 int FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_TCAM_VREGION_REHASH_INTRVL_DFLT ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_acl_tcam*) ; 

int FUNC7(struct mlxsw_sp *mlxsw_sp,
			   struct mlxsw_sp_acl_tcam *tcam)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
	u64 max_tcam_regions;
	u64 max_regions;
	u64 max_groups;
	size_t alloc_size;
	int err;

	FUNC5(&tcam->lock);
	tcam->vregion_rehash_intrvl =
			MLXSW_SP_ACL_TCAM_VREGION_REHASH_INTRVL_DFLT;
	FUNC1(&tcam->vregion_list);

	max_tcam_regions = FUNC2(mlxsw_sp->core,
					      ACL_MAX_TCAM_REGIONS);
	max_regions = FUNC2(mlxsw_sp->core, ACL_MAX_REGIONS);

	/* Use 1:1 mapping between ACL region and TCAM region */
	if (max_tcam_regions < max_regions)
		max_regions = max_tcam_regions;

	alloc_size = sizeof(tcam->used_regions[0]) * FUNC0(max_regions);
	tcam->used_regions = FUNC4(alloc_size, GFP_KERNEL);
	if (!tcam->used_regions)
		return -ENOMEM;
	tcam->max_regions = max_regions;

	max_groups = FUNC2(mlxsw_sp->core, ACL_MAX_GROUPS);
	alloc_size = sizeof(tcam->used_groups[0]) * FUNC0(max_groups);
	tcam->used_groups = FUNC4(alloc_size, GFP_KERNEL);
	if (!tcam->used_groups) {
		err = -ENOMEM;
		goto err_alloc_used_groups;
	}
	tcam->max_groups = max_groups;
	tcam->max_group_size = FUNC2(mlxsw_sp->core,
						 ACL_MAX_GROUP_SIZE);

	err = ops->init(mlxsw_sp, tcam->priv, tcam);
	if (err)
		goto err_tcam_init;

	return 0;

err_tcam_init:
	FUNC3(tcam->used_groups);
err_alloc_used_groups:
	FUNC3(tcam->used_regions);
	return err;
}