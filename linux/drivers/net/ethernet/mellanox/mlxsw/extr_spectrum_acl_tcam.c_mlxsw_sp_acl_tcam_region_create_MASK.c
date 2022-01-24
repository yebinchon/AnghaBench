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
struct mlxsw_sp_acl_tcam_vregion {int /*<<< orphan*/  key_info; } ;
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  id; int /*<<< orphan*/  priv; int /*<<< orphan*/  key_type; int /*<<< orphan*/  key_info; struct mlxsw_sp_acl_tcam_vregion* vregion; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_tcam_ops {int (* region_associate ) (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ;int (* region_init ) (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp_acl_tcam_region*,void*) ;int /*<<< orphan*/  key_type; scalar_t__ region_priv_size; } ;
struct mlxsw_sp_acl_tcam {int /*<<< orphan*/  priv; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_acl_tcam_region* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_tcam_region*) ; 
 struct mlxsw_sp_acl_tcam_region* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int FUNC7 (struct mlxsw_sp_acl_tcam*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_acl_tcam*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int FUNC10 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp_acl_tcam_region*,void*) ; 

__attribute__((used)) static struct mlxsw_sp_acl_tcam_region *
FUNC11(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_acl_tcam *tcam,
				struct mlxsw_sp_acl_tcam_vregion *vregion,
				void *hints_priv)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
	struct mlxsw_sp_acl_tcam_region *region;
	int err;

	region = FUNC2(sizeof(*region) + ops->region_priv_size, GFP_KERNEL);
	if (!region)
		return FUNC0(-ENOMEM);
	region->mlxsw_sp = mlxsw_sp;
	region->vregion = vregion;
	region->key_info = vregion->key_info;

	err = FUNC7(tcam, &region->id);
	if (err)
		goto err_region_id_get;

	err = ops->region_associate(mlxsw_sp, region);
	if (err)
		goto err_tcam_region_associate;

	region->key_type = ops->key_type;
	err = FUNC3(mlxsw_sp, region);
	if (err)
		goto err_tcam_region_alloc;

	err = FUNC5(mlxsw_sp, region);
	if (err)
		goto err_tcam_region_enable;

	err = ops->region_init(mlxsw_sp, region->priv, tcam->priv,
			       region, hints_priv);
	if (err)
		goto err_tcam_region_init;

	return region;

err_tcam_region_init:
	FUNC4(mlxsw_sp, region);
err_tcam_region_enable:
	FUNC6(mlxsw_sp, region);
err_tcam_region_alloc:
err_tcam_region_associate:
	FUNC8(tcam, region->id);
err_region_id_get:
	FUNC1(region);
	return FUNC0(err);
}