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
typedef  scalar_t__ u32 ;
struct mlxsw_sp_acl_atcam_region_12kb {scalar_t__ max_lkey_id; int /*<<< orphan*/  used_lkey_id; int /*<<< orphan*/  lkey_ht; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_12kb* priv; } ;
struct mlxsw_sp_acl_atcam_lkey_id_ht_key {int dummy; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int /*<<< orphan*/  ht_node; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  ht_key; scalar_t__ id; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 struct mlxsw_sp_acl_atcam_lkey_id* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_atcam_lkey_id*) ; 
 struct mlxsw_sp_acl_atcam_lkey_id* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mlxsw_sp_acl_atcam_lkey_id_ht_key*,int) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_atcam_lkey_id_ht_params ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_acl_atcam_lkey_id *
FUNC9(struct mlxsw_sp_acl_atcam_region *aregion,
				  struct mlxsw_sp_acl_atcam_lkey_id_ht_key *ht_key)
{
	struct mlxsw_sp_acl_atcam_region_12kb *region_12kb = aregion->priv;
	struct mlxsw_sp_acl_atcam_lkey_id *lkey_id;
	u32 id;
	int err;

	id = FUNC3(region_12kb->used_lkey_id,
				 region_12kb->max_lkey_id);
	if (id < region_12kb->max_lkey_id)
		FUNC2(id, region_12kb->used_lkey_id);
	else
		return FUNC0(-ENOBUFS);

	lkey_id = FUNC5(sizeof(*lkey_id), GFP_KERNEL);
	if (!lkey_id) {
		err = -ENOMEM;
		goto err_lkey_id_alloc;
	}

	lkey_id->id = id;
	FUNC6(&lkey_id->ht_key, ht_key, sizeof(*ht_key));
	FUNC7(&lkey_id->refcnt, 1);

	err = FUNC8(&region_12kb->lkey_ht,
				     &lkey_id->ht_node,
				     mlxsw_sp_acl_atcam_lkey_id_ht_params);
	if (err)
		goto err_rhashtable_insert;

	return lkey_id;

err_rhashtable_insert:
	FUNC4(lkey_id);
err_lkey_id_alloc:
	FUNC1(id, region_12kb->used_lkey_id);
	return FUNC0(err);
}