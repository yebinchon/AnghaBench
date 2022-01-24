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
struct mlxsw_sp_acl_tcam_vregion {int /*<<< orphan*/  lock; int /*<<< orphan*/  region2; int /*<<< orphan*/  region; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int this_is_rollback; int /*<<< orphan*/ * current_vchunk; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 

__attribute__((used)) static int
FUNC8(struct mlxsw_sp *mlxsw_sp,
				  struct mlxsw_sp_acl_tcam_vregion *vregion,
				  struct mlxsw_sp_acl_tcam_rehash_ctx *ctx,
				  int *credits)
{
	int err, err2;

	FUNC5(mlxsw_sp, vregion);
	FUNC2(&vregion->lock);
	err = FUNC1(mlxsw_sp, vregion,
						   ctx, credits);
	if (err) {
		/* In case migration was not successful, we need to swap
		 * so the original region pointer is assigned again
		 * to vregion->region.
		 */
		FUNC4(vregion->region, vregion->region2);
		ctx->current_vchunk = NULL;
		ctx->this_is_rollback = true;
		err2 = FUNC1(mlxsw_sp, vregion,
							    ctx, credits);
		if (err2) {
			FUNC7(mlxsw_sp,
									       vregion);
			FUNC0(mlxsw_sp->bus_info->dev, "Failed to rollback during vregion migration fail\n");
			/* Let the rollback to be continued later on. */
		}
	}
	FUNC3(&vregion->lock);
	FUNC6(mlxsw_sp, vregion);
	return err;
}