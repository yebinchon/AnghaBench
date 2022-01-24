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
struct TYPE_2__ {int /*<<< orphan*/  dw; } ;
struct mlxsw_sp_acl {int /*<<< orphan*/  afk; int /*<<< orphan*/  ruleset_ht; int /*<<< orphan*/  dummy_fid; int /*<<< orphan*/  rules; int /*<<< orphan*/  tcam; TYPE_1__ rule_activity_update; } ;
struct mlxsw_sp {struct mlxsw_sp_acl* acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_acl *acl = mlxsw_sp->acl;

	FUNC1(&mlxsw_sp->acl->rule_activity_update.dw);
	FUNC5(mlxsw_sp, &acl->tcam);
	FUNC0(!FUNC3(&acl->rules));
	FUNC6(acl->dummy_fid);
	FUNC7(&acl->ruleset_ht);
	FUNC4(acl->afk);
	FUNC2(acl);
}