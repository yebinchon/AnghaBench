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
struct mlxsw_sp_acl_rule_info {int action_created; struct mlxsw_afa_block* act_block; } ;
struct mlxsw_sp_acl {TYPE_1__* mlxsw_sp; } ;
struct mlxsw_afa_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  afa; } ;

/* Variables and functions */
 struct mlxsw_sp_acl_rule_info* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlxsw_afa_block*) ; 
 int FUNC2 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_rule_info*) ; 
 struct mlxsw_sp_acl_rule_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mlxsw_afa_block* FUNC5 (int /*<<< orphan*/ ) ; 

struct mlxsw_sp_acl_rule_info *
FUNC6(struct mlxsw_sp_acl *acl,
			  struct mlxsw_afa_block *afa_block)
{
	struct mlxsw_sp_acl_rule_info *rulei;
	int err;

	rulei = FUNC4(sizeof(*rulei), GFP_KERNEL);
	if (!rulei)
		return NULL;

	if (afa_block) {
		rulei->act_block = afa_block;
		return rulei;
	}

	rulei->act_block = FUNC5(acl->mlxsw_sp->afa);
	if (FUNC1(rulei->act_block)) {
		err = FUNC2(rulei->act_block);
		goto err_afa_block_create;
	}
	rulei->action_created = 1;
	return rulei;

err_afa_block_create:
	FUNC3(rulei);
	return FUNC0(err);
}