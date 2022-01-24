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
typedef  unsigned long u64 ;
struct mlxsw_sp1_mr_tcam_region {int /*<<< orphan*/  rtar_key_type; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_TCAM_RULES ; 
 int EINVAL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RTAR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RTAR_OP_RESIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rtar ; 

__attribute__((used)) static int FUNC4(void *priv,
						  unsigned long new_count)
{
	struct mlxsw_sp1_mr_tcam_region *mr_tcam_region = priv;
	struct mlxsw_sp *mlxsw_sp = mr_tcam_region->mlxsw_sp;
	char rtar_pl[MLXSW_REG_RTAR_LEN];
	u64 max_tcam_rules;

	max_tcam_rules = FUNC0(mlxsw_sp->core, ACL_MAX_TCAM_RULES);
	if (new_count > max_tcam_rules)
		return -EINVAL;
	FUNC2(rtar_pl, MLXSW_REG_RTAR_OP_RESIZE,
			    mr_tcam_region->rtar_key_type, new_count);
	return FUNC3(mlxsw_sp->core, FUNC1(rtar), rtar_pl);
}