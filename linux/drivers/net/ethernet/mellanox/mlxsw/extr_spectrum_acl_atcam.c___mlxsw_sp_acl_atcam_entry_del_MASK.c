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
struct mlxsw_sp_acl_atcam_region {int /*<<< orphan*/  entries_ht; } ;
struct mlxsw_sp_acl_atcam_entry {int /*<<< orphan*/  erp_mask; int /*<<< orphan*/  list; int /*<<< orphan*/  ht_node; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_atcam_entries_ht_params ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,int /*<<< orphan*/ ,struct mlxsw_sp_acl_atcam_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_atcam_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_acl_atcam_region *aregion,
			       struct mlxsw_sp_acl_atcam_entry *aentry)
{
	FUNC1(mlxsw_sp, aregion, aentry);
	FUNC2(mlxsw_sp, aregion, aentry->erp_mask, aentry);
	FUNC4(&aregion->entries_ht, &aentry->ht_node,
			       mlxsw_sp_acl_atcam_entries_ht_params);
	FUNC0(&aentry->list);
	FUNC3(aregion, aentry->erp_mask);
}