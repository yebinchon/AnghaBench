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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_pemrbt_protocol { ____Placeholder_mlxsw_reg_pemrbt_protocol } mlxsw_reg_pemrbt_protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PEMRBT_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_ruleset*) ; 
 int /*<<< orphan*/  pemrbt ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
					enum mlxsw_reg_pemrbt_protocol protocol,
					struct mlxsw_sp_acl_ruleset *ruleset)
{
	char pemrbt_pl[MLXSW_REG_PEMRBT_LEN];
	u16 group_id;

	group_id = FUNC3(ruleset);

	FUNC1(pemrbt_pl, protocol, group_id);
	return FUNC2(mlxsw_sp->core, FUNC0(pemrbt), pemrbt_pl);
}