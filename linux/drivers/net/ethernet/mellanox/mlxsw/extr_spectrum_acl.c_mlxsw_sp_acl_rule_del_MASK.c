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
struct TYPE_4__ {struct mlxsw_sp_acl_block* block; int /*<<< orphan*/  chain_index; struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {int /*<<< orphan*/  rule_ht; TYPE_2__ ht_key; } ;
struct mlxsw_sp_acl_rule {int /*<<< orphan*/  priv; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  list; TYPE_1__* rulei; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp_acl_profile_ops {int /*<<< orphan*/  (* rule_del ) (struct mlxsw_sp*,int /*<<< orphan*/ ) ;} ;
struct mlxsw_sp_acl_block {int /*<<< orphan*/  rule_count; int /*<<< orphan*/  egress_blocker_rule_count; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {scalar_t__ egress_bind_blocker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_rule_ht_params ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,struct mlxsw_sp_acl_block*) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_acl_ruleset*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

void FUNC5(struct mlxsw_sp *mlxsw_sp,
			   struct mlxsw_sp_acl_rule *rule)
{
	struct mlxsw_sp_acl_ruleset *ruleset = rule->ruleset;
	const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
	struct mlxsw_sp_acl_block *block = ruleset->ht_key.block;

	block->egress_blocker_rule_count -= rule->rulei->egress_bind_blocker;
	ruleset->ht_key.block->rule_count--;
	FUNC0(&rule->list);
	if (!ruleset->ht_key.chain_index &&
	    FUNC2(ruleset))
		FUNC1(mlxsw_sp, ruleset,
						  ruleset->ht_key.block);
	FUNC3(&ruleset->rule_ht, &rule->ht_node,
			       mlxsw_sp_acl_rule_ht_params);
	ops->rule_del(mlxsw_sp, rule->priv);
}