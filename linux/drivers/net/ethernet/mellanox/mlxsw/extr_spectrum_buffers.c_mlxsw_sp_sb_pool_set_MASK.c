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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_sb_pr {int mode; scalar_t__ size; scalar_t__ freeze_size; scalar_t__ freeze_mode; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; TYPE_1__* sb_vals; } ;
struct mlxsw_core {int dummy; } ;
typedef  enum mlxsw_reg_sbpr_mode { ____Placeholder_mlxsw_reg_sbpr_mode } mlxsw_reg_sbpr_mode ;
typedef  enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;
struct TYPE_2__ {struct mlxsw_sp_sb_pr* prs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 struct mlxsw_sp* FUNC2 (struct mlxsw_core*) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp*,scalar_t__) ; 
 int FUNC4 (struct mlxsw_sp*,size_t,int,scalar_t__,int) ; 

int FUNC5(struct mlxsw_core *mlxsw_core,
			 unsigned int sb_index, u16 pool_index, u32 size,
			 enum devlink_sb_threshold_type threshold_type,
			 struct netlink_ext_ack *extack)
{
	struct mlxsw_sp *mlxsw_sp = FUNC2(mlxsw_core);
	u32 pool_size = FUNC3(mlxsw_sp, size);
	const struct mlxsw_sp_sb_pr *pr;
	enum mlxsw_reg_sbpr_mode mode;

	mode = (enum mlxsw_reg_sbpr_mode) threshold_type;
	pr = &mlxsw_sp->sb_vals->prs[pool_index];

	if (size > FUNC0(mlxsw_sp->core, MAX_BUFFER_SIZE)) {
		FUNC1(extack, "Exceeded shared buffer size");
		return -EINVAL;
	}

	if (pr->freeze_mode && pr->mode != mode) {
		FUNC1(extack, "Changing this pool's threshold type is forbidden");
		return -EINVAL;
	};

	if (pr->freeze_size && pr->size != size) {
		FUNC1(extack, "Changing this pool's size is forbidden");
		return -EINVAL;
	};

	return FUNC4(mlxsw_sp, pool_index, mode,
				    pool_size, false);
}