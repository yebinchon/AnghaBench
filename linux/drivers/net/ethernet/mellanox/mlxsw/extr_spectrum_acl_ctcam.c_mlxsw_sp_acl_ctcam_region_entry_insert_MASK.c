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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  key_info; int /*<<< orphan*/  tcam_region_info; } ;
struct mlxsw_sp_acl_rule_info {int /*<<< orphan*/  act_block; int /*<<< orphan*/  values; } ;
struct mlxsw_sp_acl_ctcam_region {TYPE_2__* ops; struct mlxsw_sp_acl_tcam_region* region; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;
struct mlxsw_sp_acl_ctcam_entry {TYPE_1__ parman_item; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; int /*<<< orphan*/  acl; } ;
struct mlxsw_afk {int dummy; } ;
struct TYPE_4__ {int (* entry_insert ) (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*,char*) ;int /*<<< orphan*/  (* entry_remove ) (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTCE2_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PTCE2_OP_WRITE_WRITE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_afk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_afk* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlxsw_sp*,struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ptce2 ; 
 int FUNC10 (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ; 

__attribute__((used)) static int
FUNC12(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_acl_ctcam_region *cregion,
				       struct mlxsw_sp_acl_ctcam_entry *centry,
				       struct mlxsw_sp_acl_rule_info *rulei,
				       bool fillup_priority)
{
	struct mlxsw_sp_acl_tcam_region *region = cregion->region;
	struct mlxsw_afk *afk = FUNC8(mlxsw_sp->acl);
	char ptce2_pl[MLXSW_REG_PTCE2_LEN];
	char *act_set;
	u32 priority;
	char *mask;
	char *key;
	int err;

	err = FUNC9(mlxsw_sp, rulei, &priority,
					     fillup_priority);
	if (err)
		return err;

	FUNC6(ptce2_pl, true, MLXSW_REG_PTCE2_OP_WRITE_WRITE,
			     region->tcam_region_info,
			     centry->parman_item.index, priority);
	key = FUNC4(ptce2_pl);
	mask = FUNC5(ptce2_pl);
	FUNC2(afk, region->key_info, &rulei->values, key, mask);

	err = cregion->ops->entry_insert(cregion, centry, mask);
	if (err)
		return err;

	/* Only the first action set belongs here, the rest is in KVD */
	act_set = FUNC1(rulei->act_block);
	FUNC3(ptce2_pl, act_set);

	err = FUNC7(mlxsw_sp->core, FUNC0(ptce2), ptce2_pl);
	if (err)
		goto err_ptce2_write;

	return 0;

err_ptce2_write:
	cregion->ops->entry_remove(cregion, centry);
	return err;
}