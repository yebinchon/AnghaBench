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
struct mlxsw_sp_rt6 {int /*<<< orphan*/  list; } ;
struct mlxsw_sp_fib6_entry {int /*<<< orphan*/  nrt6; } ;
struct mlxsw_sp {int dummy; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_rt6* FUNC2 (struct mlxsw_sp_fib6_entry*,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_fib6_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_rt6*) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_fib6_entry *fib6_entry,
				struct fib6_info **rt_arr, unsigned int nrt6)
{
	struct mlxsw_sp_rt6 *mlxsw_sp_rt6;
	int i;

	for (i = 0; i < nrt6; i++) {
		mlxsw_sp_rt6 = FUNC2(fib6_entry,
							   rt_arr[i]);
		if (FUNC0(!mlxsw_sp_rt6))
			continue;

		fib6_entry->nrt6--;
		FUNC1(&mlxsw_sp_rt6->list);
		FUNC4(mlxsw_sp_rt6);
	}

	FUNC3(mlxsw_sp, fib6_entry);
}