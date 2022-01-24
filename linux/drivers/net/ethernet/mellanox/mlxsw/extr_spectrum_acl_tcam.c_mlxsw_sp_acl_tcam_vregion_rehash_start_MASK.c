#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_acl_tcam_vregion {TYPE_1__* region2; TYPE_1__* region; int /*<<< orphan*/  tcam; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int this_is_rollback; void* hints_priv; } ;
typedef  void mlxsw_sp_acl_tcam_region ;
struct mlxsw_sp_acl_tcam_ops {int /*<<< orphan*/  (* region_rehash_hints_put ) (void*) ;void* (* region_rehash_hints_get ) (int /*<<< orphan*/ ) ;} ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  group; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,void*,unsigned int,TYPE_1__*) ; 
 void* FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct mlxsw_sp_acl_tcam_vregion*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,void*) ; 
 unsigned int FUNC5 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 

__attribute__((used)) static int
FUNC9(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_acl_tcam_vregion *vregion,
				       struct mlxsw_sp_acl_tcam_rehash_ctx *ctx)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
	unsigned int priority = FUNC5(vregion);
	struct mlxsw_sp_acl_tcam_region *new_region;
	void *hints_priv;
	int err;

	FUNC8(mlxsw_sp, vregion);

	hints_priv = ops->region_rehash_hints_get(vregion->region->priv);
	if (FUNC0(hints_priv))
		return FUNC1(hints_priv);

	new_region = FUNC3(mlxsw_sp, vregion->tcam,
						     vregion, hints_priv);
	if (FUNC0(new_region)) {
		err = FUNC1(new_region);
		goto err_region_create;
	}

	/* vregion->region contains the pointer to the new region
	 * we are going to migrate to.
	 */
	vregion->region2 = vregion->region;
	vregion->region = new_region;
	err = FUNC2(mlxsw_sp,
						    vregion->region2->group,
						    new_region, priority,
						    vregion->region2);
	if (err)
		goto err_group_region_attach;

	ctx->hints_priv = hints_priv;
	ctx->this_is_rollback = false;

	return 0;

err_group_region_attach:
	vregion->region = vregion->region2;
	vregion->region2 = NULL;
	FUNC4(mlxsw_sp, new_region);
err_region_create:
	ops->region_rehash_hints_put(hints_priv);
	return err;
}