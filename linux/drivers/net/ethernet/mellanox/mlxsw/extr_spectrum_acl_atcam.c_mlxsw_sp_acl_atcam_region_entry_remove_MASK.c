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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  tcam_region_info; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_2__* ops; struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int /*<<< orphan*/  id; int /*<<< orphan*/  refcnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  mask; int /*<<< orphan*/  start; } ;
struct mlxsw_sp_acl_atcam_entry {TYPE_1__ delta_info; int /*<<< orphan*/  enc_key; int /*<<< orphan*/  erp_mask; struct mlxsw_sp_acl_atcam_lkey_id* lkey_id; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* lkey_id_put ) (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTCE3_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PTCE3_OP_WRITE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptce3 ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ; 

__attribute__((used)) static void
FUNC6(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_acl_atcam_region *aregion,
				       struct mlxsw_sp_acl_atcam_entry *aentry)
{
	struct mlxsw_sp_acl_atcam_lkey_id *lkey_id = aentry->lkey_id;
	struct mlxsw_sp_acl_tcam_region *region = aregion->region;
	u8 erp_id = FUNC3(aentry->erp_mask);
	char ptce3_pl[MLXSW_REG_PTCE3_LEN];

	FUNC1(ptce3_pl, false, MLXSW_REG_PTCE3_OP_WRITE_WRITE, 0,
			     region->tcam_region_info,
			     aentry->enc_key, erp_id,
			     aentry->delta_info.start,
			     aentry->delta_info.mask,
			     aentry->delta_info.value,
			     FUNC4(&lkey_id->refcnt) != 1,
			     lkey_id->id, 0);
	FUNC2(mlxsw_sp->core, FUNC0(ptce3), ptce3_pl);
	aregion->ops->lkey_id_put(aregion, lkey_id);
}