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
struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
typedef  struct mlxsw_sp_acl_ruleset mlxsw_sp_acl_rule ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  extack; int /*<<< orphan*/  chain_index; } ;
struct flow_cls_offload {TYPE_1__ common; int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_ruleset*) ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_PROFILE_FLOWER ; 
 int FUNC1 (struct mlxsw_sp_acl_ruleset*) ; 
 int FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ; 
 struct mlxsw_sp_acl_ruleset* FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ; 
 struct mlxsw_sp_acl_rule_info* FUNC5 (struct mlxsw_sp_acl_ruleset*) ; 
 int FUNC6 (struct mlxsw_sp_acl_rule_info*) ; 
 struct mlxsw_sp_acl_ruleset* FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ; 
 int FUNC9 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_acl_rule_info*,struct flow_cls_offload*) ; 

int FUNC10(struct mlxsw_sp *mlxsw_sp,
			    struct mlxsw_sp_acl_block *block,
			    struct flow_cls_offload *f)
{
	struct mlxsw_sp_acl_rule_info *rulei;
	struct mlxsw_sp_acl_ruleset *ruleset;
	struct mlxsw_sp_acl_rule *rule;
	int err;

	ruleset = FUNC7(mlxsw_sp, block,
					   f->common.chain_index,
					   MLXSW_SP_ACL_PROFILE_FLOWER, NULL);
	if (FUNC0(ruleset))
		return FUNC1(ruleset);

	rule = FUNC3(mlxsw_sp, ruleset, f->cookie, NULL,
					f->common.extack);
	if (FUNC0(rule)) {
		err = FUNC1(rule);
		goto err_rule_create;
	}

	rulei = FUNC5(rule);
	err = FUNC9(mlxsw_sp, block, rulei, f);
	if (err)
		goto err_flower_parse;

	err = FUNC6(rulei);
	if (err)
		goto err_rulei_commit;

	err = FUNC2(mlxsw_sp, rule);
	if (err)
		goto err_rule_add;

	FUNC8(mlxsw_sp, ruleset);
	return 0;

err_rule_add:
err_rulei_commit:
err_flower_parse:
	FUNC4(mlxsw_sp, rule);
err_rule_create:
	FUNC8(mlxsw_sp, ruleset);
	return err;
}