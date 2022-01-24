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
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  id; TYPE_1__* group; int /*<<< orphan*/  priv; } ;
struct mlxsw_sp_acl_tcam_ops {int /*<<< orphan*/  (* region_fini ) (struct mlxsw_sp*,int /*<<< orphan*/ ) ;} ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_region*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_acl_tcam_region *region)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

	ops->region_fini(mlxsw_sp, region->priv);
	FUNC1(mlxsw_sp, region);
	FUNC2(mlxsw_sp, region);
	FUNC3(region->group->tcam,
					region->id);
	FUNC0(region);
}