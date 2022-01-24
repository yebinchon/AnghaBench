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
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cchunk; struct mlxsw_sp_acl_rule_info* rulei; int /*<<< orphan*/  centry; } ;
struct mlxsw_sp1_acl_tcam_region {TYPE_1__ catchall; int /*<<< orphan*/  cregion; } ;
struct mlxsw_sp {int /*<<< orphan*/  acl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_rule_info*) ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_TCAM_CATCHALL_PRIO ; 
 int FUNC1 (struct mlxsw_sp_acl_rule_info*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mlxsw_sp_acl_rule_info*,int) ; 
 int FUNC6 (struct mlxsw_sp_acl_rule_info*) ; 
 int FUNC7 (struct mlxsw_sp_acl_rule_info*) ; 
 struct mlxsw_sp_acl_rule_info* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_acl_rule_info*) ; 

__attribute__((used)) static int
FUNC10(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp1_acl_tcam_region *region)
{
	struct mlxsw_sp_acl_rule_info *rulei;
	int err;

	FUNC4(&region->cregion,
				      &region->catchall.cchunk,
				      MLXSW_SP_ACL_TCAM_CATCHALL_PRIO);
	rulei = FUNC8(mlxsw_sp->acl, NULL);
	if (FUNC0(rulei)) {
		err = FUNC1(rulei);
		goto err_rulei_create;
	}
	err = FUNC6(rulei);
	if (FUNC2(err))
		goto err_rulei_act_continue;
	err = FUNC7(rulei);
	if (err)
		goto err_rulei_commit;
	err = FUNC5(mlxsw_sp, &region->cregion,
					   &region->catchall.cchunk,
					   &region->catchall.centry,
					   rulei, false);
	if (err)
		goto err_entry_add;
	region->catchall.rulei = rulei;
	return 0;

err_entry_add:
err_rulei_commit:
err_rulei_act_continue:
	FUNC9(rulei);
err_rulei_create:
	FUNC3(&region->catchall.cchunk);
	return err;
}