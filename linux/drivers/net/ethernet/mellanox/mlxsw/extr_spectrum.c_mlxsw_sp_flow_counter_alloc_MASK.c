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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_COUNTER_SUB_POOL_FLOW ; 
 int FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct mlxsw_sp*,unsigned int) ; 

int FUNC3(struct mlxsw_sp *mlxsw_sp,
				unsigned int *p_counter_index)
{
	int err;

	err = FUNC0(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_FLOW,
				     p_counter_index);
	if (err)
		return err;
	err = FUNC2(mlxsw_sp, *p_counter_index);
	if (err)
		goto err_counter_clear;
	return 0;

err_counter_clear:
	FUNC1(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_FLOW,
			      *p_counter_index);
	return err;
}