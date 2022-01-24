#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_acl_tcam_rehash_ctx {int dummy; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam_rehash_ctx ctx; } ;
struct mlxsw_sp_acl_tcam_vregion {TYPE_1__ rehash; } ;
struct mlxsw_sp {TYPE_2__* bus_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_tcam_rehash_ctx*) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*,struct mlxsw_sp_acl_tcam_rehash_ctx*) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_acl_tcam_vregion *vregion,
				 int *credits)
{
	struct mlxsw_sp_acl_tcam_rehash_ctx *ctx = &vregion->rehash.ctx;
	int err;

	/* Check if the previous rehash work was interrupted
	 * which means we have to continue it now.
	 * If not, start a new rehash.
	 */
	if (!FUNC3(ctx)) {
		err = FUNC4(mlxsw_sp,
							     vregion, ctx);
		if (err) {
			if (err != -EAGAIN)
				FUNC0(mlxsw_sp->bus_info->dev, "Failed get rehash hints\n");
			return;
		}
	}

	err = FUNC1(mlxsw_sp, vregion,
						ctx, credits);
	if (err) {
		FUNC0(mlxsw_sp->bus_info->dev, "Failed to migrate vregion\n");
	}

	if (*credits >= 0)
		FUNC2(mlxsw_sp, vregion, ctx);
}