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
typedef  scalar_t__ u32 ;
struct mlxsw_sp_sb_pr {scalar_t__ size; int /*<<< orphan*/  mode; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLXSW_SP_SB_INFI ; 
 scalar_t__ FUNC0 (struct mlxsw_sp*,scalar_t__) ; 
 int FUNC1 (struct mlxsw_sp*,int,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp *mlxsw_sp,
				const struct mlxsw_sp_sb_pr *prs,
				size_t prs_len)
{
	int i;
	int err;

	for (i = 0; i < prs_len; i++) {
		u32 size = prs[i].size;
		u32 size_cells;

		if (size == MLXSW_SP_SB_INFI) {
			err = FUNC1(mlxsw_sp, i, prs[i].mode,
						   0, true);
		} else {
			size_cells = FUNC0(mlxsw_sp, size);
			err = FUNC1(mlxsw_sp, i, prs[i].mode,
						   size_cells, false);
		}
		if (err)
			return err;
	}
	return 0;
}