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
struct mlxsw_sp_acl_tcam_region {int dummy; } ;
struct mlxsw_sp1_acl_tcam_region {int /*<<< orphan*/  cregion; struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp*,struct mlxsw_sp1_acl_tcam_region*) ; 
 int /*<<< orphan*/  mlxsw_sp1_acl_ctcam_region_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ *,struct mlxsw_sp_acl_tcam_region*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp *mlxsw_sp, void *region_priv,
			       void *tcam_priv,
			       struct mlxsw_sp_acl_tcam_region *_region,
			       void *hints_priv)
{
	struct mlxsw_sp1_acl_tcam_region *region = region_priv;
	int err;

	err = FUNC2(mlxsw_sp, &region->cregion,
					     _region,
					     &mlxsw_sp1_acl_ctcam_region_ops);
	if (err)
		return err;
	err = FUNC0(mlxsw_sp, region);
	if (err)
		goto err_catchall_add;
	region->region = _region;
	return 0;

err_catchall_add:
	FUNC1(&region->cregion);
	return err;
}