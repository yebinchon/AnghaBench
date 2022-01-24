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
struct mlxsw_sp_acl_atcam_region_12kb {struct mlxsw_sp_acl_atcam_region_12kb* used_lkey_id; int /*<<< orphan*/  lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_12kb* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_atcam_region_12kb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp_acl_atcam_region *aregion)
{
	struct mlxsw_sp_acl_atcam_region_12kb *region_12kb = aregion->priv;

	FUNC1(&region_12kb->lkey_ht);
	FUNC0(region_12kb->used_lkey_id);
	FUNC0(region_12kb);
}