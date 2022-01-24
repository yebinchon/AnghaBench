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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct mlxsw_sp_acl_ruleset* FUNC1 (struct mlxsw_sp2_mr_tcam*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*) ; 
 struct mlxsw_sp_acl_rule* FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp *mlxsw_sp, void *priv,
				void *route_priv,
				struct mlxsw_sp_mr_route_key *key)
{
	struct mlxsw_sp2_mr_tcam *mr_tcam = priv;
	struct mlxsw_sp_acl_ruleset *ruleset;
	struct mlxsw_sp_acl_rule *rule;

	ruleset = FUNC1(mr_tcam, key->proto);
	if (FUNC0(!ruleset))
		return;

	rule = FUNC4(mlxsw_sp, ruleset,
					(unsigned long) route_priv);
	if (FUNC0(!rule))
		return;

	FUNC2(mlxsw_sp, rule);
	FUNC3(mlxsw_sp, rule);
}