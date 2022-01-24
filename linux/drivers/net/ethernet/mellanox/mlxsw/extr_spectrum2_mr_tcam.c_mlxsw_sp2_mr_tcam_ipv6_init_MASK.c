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
struct mlxsw_sp2_mr_tcam {int /*<<< orphan*/  ruleset6; int /*<<< orphan*/  mlxsw_sp; int /*<<< orphan*/  acl_block; } ;
struct mlxsw_afk_element_usage {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_PEMRBT_PROTO_IPV6 ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_PROFILE_MR ; 
 int /*<<< orphan*/  MLXSW_SP_L3_PROTO_IPV6 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_afk_element_usage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp2_mr_tcam_usage_ipv6 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_afk_element_usage*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp2_mr_tcam *mr_tcam)
{
	struct mlxsw_afk_element_usage elusage;
	int err;

	/* Initialize IPv6 ACL group */
	FUNC3(&elusage,
				     mlxsw_sp2_mr_tcam_usage_ipv6,
				     FUNC0(mlxsw_sp2_mr_tcam_usage_ipv6));
	mr_tcam->ruleset6 = FUNC5(mr_tcam->mlxsw_sp,
						     mr_tcam->acl_block,
						     MLXSW_SP_L3_PROTO_IPV6,
						     MLXSW_SP_ACL_PROFILE_MR,
						     &elusage);

	if (FUNC1(mr_tcam->ruleset6))
		return FUNC2(mr_tcam->ruleset6);

	/* MC Router groups should be bound before routes are inserted. */
	err = FUNC4(mr_tcam->mlxsw_sp,
					   MLXSW_REG_PEMRBT_PROTO_IPV6,
					   mr_tcam->ruleset6);
	if (err)
		goto err_bind_group;

	return 0;

err_bind_group:
	FUNC6(mr_tcam->mlxsw_sp, mr_tcam->ruleset6);
	return err;
}