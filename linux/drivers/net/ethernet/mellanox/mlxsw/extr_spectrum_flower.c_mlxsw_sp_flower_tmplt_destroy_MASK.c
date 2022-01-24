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
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chain_index; } ;
struct flow_cls_offload {TYPE_1__ common; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_ruleset*) ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_PROFILE_FLOWER ; 
 struct mlxsw_sp_acl_ruleset* FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ; 

void FUNC3(struct mlxsw_sp *mlxsw_sp,
				   struct mlxsw_sp_acl_block *block,
				   struct flow_cls_offload *f)
{
	struct mlxsw_sp_acl_ruleset *ruleset;

	ruleset = FUNC1(mlxsw_sp, block,
					   f->common.chain_index,
					   MLXSW_SP_ACL_PROFILE_FLOWER, NULL);
	if (FUNC0(ruleset))
		return;
	/* put the reference to the ruleset kept in create */
	FUNC2(mlxsw_sp, ruleset);
	FUNC2(mlxsw_sp, ruleset);
}