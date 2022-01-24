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
struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dw; int /*<<< orphan*/  interval; } ;
struct mlxsw_sp_acl {int /*<<< orphan*/  afk; int /*<<< orphan*/  ruleset_ht; TYPE_1__ rule_activity_update; int /*<<< orphan*/  tcam; int /*<<< orphan*/  rules; struct mlxsw_sp_fid* dummy_fid; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  afk_ops; int /*<<< orphan*/  core; struct mlxsw_sp_acl* acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_FLEX_KEYS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_RULE_ACTIVITY_UPDATE_PERIOD_MS ; 
 int FUNC4 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl*) ; 
 struct mlxsw_sp_acl* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_rule_activity_update_work ; 
 int /*<<< orphan*/  mlxsw_sp_acl_ruleset_ht_params ; 
 int FUNC10 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mlxsw_sp*) ; 
 struct mlxsw_sp_fid* FUNC12 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC16(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_fid *fid;
	struct mlxsw_sp_acl *acl;
	size_t alloc_size;
	int err;

	alloc_size = sizeof(*acl) + FUNC11(mlxsw_sp);
	acl = FUNC6(alloc_size, GFP_KERNEL);
	if (!acl)
		return -ENOMEM;
	mlxsw_sp->acl = acl;
	acl->mlxsw_sp = mlxsw_sp;
	acl->afk = FUNC7(FUNC3(mlxsw_sp->core,
						       ACL_FLEX_KEYS),
				    mlxsw_sp->afk_ops);
	if (!acl->afk) {
		err = -ENOMEM;
		goto err_afk_create;
	}

	err = FUNC15(&acl->ruleset_ht,
			      &mlxsw_sp_acl_ruleset_ht_params);
	if (err)
		goto err_rhashtable_init;

	fid = FUNC12(mlxsw_sp);
	if (FUNC2(fid)) {
		err = FUNC4(fid);
		goto err_fid_get;
	}
	acl->dummy_fid = fid;

	FUNC1(&acl->rules);
	err = FUNC10(mlxsw_sp, &acl->tcam);
	if (err)
		goto err_acl_ops_init;

	/* Create the delayed work for the rule activity_update */
	FUNC0(&acl->rule_activity_update.dw,
			  mlxsw_sp_acl_rule_activity_update_work);
	acl->rule_activity_update.interval = MLXSW_SP_ACL_RULE_ACTIVITY_UPDATE_PERIOD_MS;
	FUNC9(&acl->rule_activity_update.dw, 0);
	return 0;

err_acl_ops_init:
	FUNC13(fid);
err_fid_get:
	FUNC14(&acl->ruleset_ht);
err_rhashtable_init:
	FUNC8(acl->afk);
err_afk_create:
	FUNC5(acl);
	return err;
}