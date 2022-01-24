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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink_trap_group {int id; } ;

/* Variables and functions */
#define  DEVLINK_TRAP_GROUP_GENERIC_ID_L2_DROPS 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_HTGT_LEN ; 
 int MLXSW_REG_HTGT_TRAP_GROUP_SP_L2_DISCARDS ; 
 int /*<<< orphan*/  MLXSW_SP_DISCARD_POLICER_ID ; 
 int /*<<< orphan*/  htgt ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp *mlxsw_sp,
			   const struct devlink_trap_group *group)
{
	char htgt_pl[MLXSW_REG_HTGT_LEN];
	u8 priority, tc, group_id;
	u16 policer_id;

	switch (group->id) {
	case DEVLINK_TRAP_GROUP_GENERIC_ID_L2_DROPS:
		group_id = MLXSW_REG_HTGT_TRAP_GROUP_SP_L2_DISCARDS;
		policer_id = MLXSW_SP_DISCARD_POLICER_ID;
		priority = 0;
		tc = 1;
		break;
	default:
		return -EINVAL;
	}

	FUNC1(htgt_pl, group_id, policer_id, priority, tc);
	return FUNC2(mlxsw_sp->core, FUNC0(htgt), htgt_pl);
}