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
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_sp_acl_atcam_region_12kb {struct mlxsw_sp_acl_atcam_region_12kb* used_lkey_id; int /*<<< orphan*/  max_lkey_id; int /*<<< orphan*/  lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_12kb* priv; TYPE_1__* region; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_2__ {struct mlxsw_sp* mlxsw_sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_LARGE_KEY_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_atcam_region_12kb*) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_atcam_lkey_id_ht_params ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct mlxsw_sp_acl_atcam_region *aregion)
{
	struct mlxsw_sp *mlxsw_sp = aregion->region->mlxsw_sp;
	struct mlxsw_sp_acl_atcam_region_12kb *region_12kb;
	size_t alloc_size;
	u64 max_lkey_id;
	int err;

	if (!FUNC2(mlxsw_sp->core, ACL_MAX_LARGE_KEY_ID))
		return -EIO;

	max_lkey_id = FUNC1(mlxsw_sp->core, ACL_MAX_LARGE_KEY_ID);
	region_12kb = FUNC4(sizeof(*region_12kb), GFP_KERNEL);
	if (!region_12kb)
		return -ENOMEM;

	alloc_size = FUNC0(max_lkey_id) * sizeof(unsigned long);
	region_12kb->used_lkey_id = FUNC4(alloc_size, GFP_KERNEL);
	if (!region_12kb->used_lkey_id) {
		err = -ENOMEM;
		goto err_used_lkey_id_alloc;
	}

	err = FUNC5(&region_12kb->lkey_ht,
			      &mlxsw_sp_acl_atcam_lkey_id_ht_params);
	if (err)
		goto err_rhashtable_init;

	region_12kb->max_lkey_id = max_lkey_id;
	aregion->priv = region_12kb;

	return 0;

err_rhashtable_init:
	FUNC3(region_12kb->used_lkey_id);
err_used_lkey_id_alloc:
	FUNC3(region_12kb);
	return err;
}