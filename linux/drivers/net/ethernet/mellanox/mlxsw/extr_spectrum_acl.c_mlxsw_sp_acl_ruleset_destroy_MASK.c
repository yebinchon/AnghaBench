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
struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {int /*<<< orphan*/  rule_ht; int /*<<< orphan*/  priv; int /*<<< orphan*/  ht_node; TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_profile_ops {int /*<<< orphan*/  (* ruleset_del ) (struct mlxsw_sp*,int /*<<< orphan*/ ) ;} ;
struct mlxsw_sp_acl {int /*<<< orphan*/  ruleset_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_acl* acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_ruleset*) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_ruleset_ht_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp *mlxsw_sp,
					 struct mlxsw_sp_acl_ruleset *ruleset)
{
	const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
	struct mlxsw_sp_acl *acl = mlxsw_sp->acl;

	FUNC2(&acl->ruleset_ht, &ruleset->ht_node,
			       mlxsw_sp_acl_ruleset_ht_params);
	ops->ruleset_del(mlxsw_sp, ruleset->priv);
	FUNC1(&ruleset->rule_ht);
	FUNC0(ruleset);
}