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
struct mlxsw_sp_counter_pool {scalar_t__ pool_size; struct mlxsw_sp_counter_pool* usage; } ;
struct mlxsw_sp {struct mlxsw_sp_counter_pool* counter_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp_counter_pool*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_counter_pool*) ; 

void FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_counter_pool *pool = mlxsw_sp->counter_pool;

	FUNC0(FUNC1(pool->usage, pool->pool_size) !=
			       pool->pool_size);
	FUNC2(pool->usage);
	FUNC2(pool);
}