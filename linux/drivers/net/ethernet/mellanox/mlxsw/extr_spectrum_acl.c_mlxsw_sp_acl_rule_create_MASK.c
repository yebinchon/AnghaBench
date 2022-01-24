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
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_rule {unsigned long cookie; int /*<<< orphan*/  rulei; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp_acl_profile_ops {scalar_t__ rule_priv_size; } ;
struct mlxsw_sp {int /*<<< orphan*/  acl; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_acl_rule* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_rule*) ; 
 struct mlxsw_sp_acl_rule* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_acl_ruleset*) ; 

struct mlxsw_sp_acl_rule *
FUNC8(struct mlxsw_sp *mlxsw_sp,
			 struct mlxsw_sp_acl_ruleset *ruleset,
			 unsigned long cookie,
			 struct mlxsw_afa_block *afa_block,
			 struct netlink_ext_ack *extack)
{
	const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
	struct mlxsw_sp_acl_rule *rule;
	int err;

	FUNC7(ruleset);
	rule = FUNC4(sizeof(*rule) + ops->rule_priv_size,
		       GFP_KERNEL);
	if (!rule) {
		err = -ENOMEM;
		goto err_alloc;
	}
	rule->cookie = cookie;
	rule->ruleset = ruleset;

	rule->rulei = FUNC5(mlxsw_sp->acl, afa_block);
	if (FUNC1(rule->rulei)) {
		err = FUNC2(rule->rulei);
		goto err_rulei_create;
	}

	return rule;

err_rulei_create:
	FUNC3(rule);
err_alloc:
	FUNC6(mlxsw_sp, ruleset);
	return FUNC0(err);
}