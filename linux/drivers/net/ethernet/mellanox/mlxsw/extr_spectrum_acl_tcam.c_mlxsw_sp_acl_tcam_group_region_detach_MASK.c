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
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  list; struct mlxsw_sp_acl_tcam_group* group; } ;
struct mlxsw_sp_acl_tcam_group {int /*<<< orphan*/  lock; int /*<<< orphan*/  region_count; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_sp *mlxsw_sp,
				      struct mlxsw_sp_acl_tcam_region *region)
{
	struct mlxsw_sp_acl_tcam_group *group = region->group;

	FUNC2(&group->lock);
	FUNC0(&region->list);
	group->region_count--;
	FUNC1(mlxsw_sp, group);
	FUNC3(&group->lock);
}