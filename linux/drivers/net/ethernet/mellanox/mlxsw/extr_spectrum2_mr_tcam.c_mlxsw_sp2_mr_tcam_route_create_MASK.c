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
struct mlxsw_sp_mr_route_key {int /*<<< orphan*/  proto; } ;
struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp_acl_rule {int dummy; } ;
struct mlxsw_sp2_mr_tcam {int dummy; } ;
struct mlxsw_sp2_mr_route {struct mlxsw_sp2_mr_tcam* mr_tcam; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afa_block {int dummy; } ;
typedef  enum mlxsw_sp_mr_route_prio { ____Placeholder_mlxsw_sp_mr_route_prio } mlxsw_sp_mr_route_prio ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_rule*) ; 
 int FUNC1 (struct mlxsw_sp_acl_rule*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct mlxsw_sp_acl_ruleset* FUNC3 (struct mlxsw_sp2_mr_tcam*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_rule*,struct mlxsw_sp_mr_route_key*,int) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*) ; 
 struct mlxsw_sp_acl_rule* FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,unsigned long,struct mlxsw_afa_block*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*) ; 

__attribute__((used)) static int
FUNC8(struct mlxsw_sp *mlxsw_sp, void *priv,
			       void *route_priv,
			       struct mlxsw_sp_mr_route_key *key,
			       struct mlxsw_afa_block *afa_block,
			       enum mlxsw_sp_mr_route_prio prio)
{
	struct mlxsw_sp2_mr_route *mr_route = route_priv;
	struct mlxsw_sp2_mr_tcam *mr_tcam = priv;
	struct mlxsw_sp_acl_ruleset *ruleset;
	struct mlxsw_sp_acl_rule *rule;
	int err;

	mr_route->mr_tcam = mr_tcam;
	ruleset = FUNC3(mr_tcam, key->proto);
	if (FUNC2(!ruleset))
		return -EINVAL;

	rule = FUNC6(mlxsw_sp, ruleset,
					(unsigned long) route_priv, afa_block,
					NULL);
	if (FUNC0(rule))
		return FUNC1(rule);

	FUNC4(rule, key, prio);
	err = FUNC5(mlxsw_sp, rule);
	if (err)
		goto err_rule_add;

	return 0;

err_rule_add:
	FUNC7(mlxsw_sp, rule);
	return err;
}