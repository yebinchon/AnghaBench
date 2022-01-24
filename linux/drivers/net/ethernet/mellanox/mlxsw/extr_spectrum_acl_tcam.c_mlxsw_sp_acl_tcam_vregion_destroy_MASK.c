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
struct TYPE_2__ {int /*<<< orphan*/  dw; } ;
struct mlxsw_sp_acl_tcam_vregion {int /*<<< orphan*/  lock; int /*<<< orphan*/  key_info; scalar_t__ region; scalar_t__ region2; TYPE_1__ rehash; int /*<<< orphan*/  tlist; struct mlxsw_sp_acl_tcam* tcam; struct mlxsw_sp_acl_tcam_vgroup* vgroup; } ;
struct mlxsw_sp_acl_tcam_vgroup {scalar_t__ vregion_rehash_enabled; } ;
struct mlxsw_sp_acl_tcam_ops {scalar_t__ region_rehash_hints_get; } ;
struct mlxsw_sp_acl_tcam {int /*<<< orphan*/  lock; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct mlxsw_sp *mlxsw_sp,
				  struct mlxsw_sp_acl_tcam_vregion *vregion)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
	struct mlxsw_sp_acl_tcam_vgroup *vgroup = vregion->vgroup;
	struct mlxsw_sp_acl_tcam *tcam = vregion->tcam;

	if (vgroup->vregion_rehash_enabled && ops->region_rehash_hints_get) {
		FUNC7(&tcam->lock);
		FUNC2(&vregion->tlist);
		FUNC8(&tcam->lock);
		FUNC0(&vregion->rehash.dw);
	}
	FUNC5(mlxsw_sp, vregion);
	if (vregion->region2)
		FUNC4(mlxsw_sp, vregion->region2);
	FUNC4(mlxsw_sp, vregion->region);
	FUNC3(vregion->key_info);
	FUNC6(&vregion->lock);
	FUNC1(vregion);
}