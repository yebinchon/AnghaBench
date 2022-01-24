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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct mlxsw_sp_sb_vals {TYPE_1__* pool_dess; } ;
struct mlxsw_sp_sb_cm {size_t pool_index; scalar_t__ min_buff; scalar_t__ max_buff; } ;
struct mlxsw_sp {struct mlxsw_sp_sb_vals* sb_vals; } ;
typedef  enum mlxsw_reg_sbxx_dir { ____Placeholder_mlxsw_reg_sbxx_dir } mlxsw_reg_sbxx_dir ;
struct TYPE_2__ {int dir; } ;

/* Variables and functions */
 int MLXSW_REG_SBXX_DIR_INGRESS ; 
 scalar_t__ MLXSW_SP_SB_INFI ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp*,scalar_t__) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,size_t) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp*,size_t) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp, u8 local_port,
				  enum mlxsw_reg_sbxx_dir dir,
				  const struct mlxsw_sp_sb_cm *cms,
				  size_t cms_len)
{
	const struct mlxsw_sp_sb_vals *sb_vals = mlxsw_sp->sb_vals;
	int i;
	int err;

	for (i = 0; i < cms_len; i++) {
		const struct mlxsw_sp_sb_cm *cm;
		u32 min_buff;
		u32 max_buff;

		if (i == 8 && dir == MLXSW_REG_SBXX_DIR_INGRESS)
			continue; /* PG number 8 does not exist, skip it */
		cm = &cms[i];
		if (FUNC0(sb_vals->pool_dess[cm->pool_index].dir != dir))
			continue;

		min_buff = FUNC1(mlxsw_sp, cm->min_buff);
		max_buff = cm->max_buff;
		if (max_buff == MLXSW_SP_SB_INFI) {
			err = FUNC2(mlxsw_sp, local_port, i,
						   min_buff, 0,
						   true, cm->pool_index);
		} else {
			if (FUNC3(mlxsw_sp,
						       cm->pool_index))
				max_buff = FUNC1(mlxsw_sp,
								max_buff);
			err = FUNC2(mlxsw_sp, local_port, i,
						   min_buff, max_buff,
						   false, cm->pool_index);
		}
		if (err)
			return err;
	}
	return 0;
}