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
struct mlxsw_sp_acl_tcam_vregion {struct mlxsw_sp_acl_tcam_region* region2; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int /*<<< orphan*/ * hints_priv; } ;
struct mlxsw_sp_acl_tcam_region {int dummy; } ;
struct mlxsw_sp_acl_tcam_ops {int /*<<< orphan*/  (* region_rehash_hints_put ) (int /*<<< orphan*/ *) ;} ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp *mlxsw_sp,
				     struct mlxsw_sp_acl_tcam_vregion *vregion,
				     struct mlxsw_sp_acl_tcam_rehash_ctx *ctx)
{
	struct mlxsw_sp_acl_tcam_region *unused_region = vregion->region2;
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

	vregion->region2 = NULL;
	FUNC0(mlxsw_sp, unused_region);
	FUNC1(mlxsw_sp, unused_region);
	ops->region_rehash_hints_put(ctx->hints_priv);
	ctx->hints_priv = NULL;
}