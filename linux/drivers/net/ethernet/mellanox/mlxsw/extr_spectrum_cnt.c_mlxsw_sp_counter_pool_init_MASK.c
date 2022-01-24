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
struct mlxsw_sp_counter_sub_pool {int size; int bank_count; unsigned int base_index; } ;
struct mlxsw_sp_counter_pool {unsigned int pool_size; struct mlxsw_sp_counter_sub_pool* sub_pools; void* usage; } ;
struct mlxsw_sp {struct mlxsw_sp_counter_pool* counter_pool; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_counter_sub_pool*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  COUNTER_POOL_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLXSW_SP_COUNTER_POOL_BANK_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_counter_pool*) ; 
 void* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlxsw_sp*) ; 
 struct mlxsw_sp_counter_sub_pool* mlxsw_sp_counter_sub_pools ; 
 int FUNC7 (struct mlxsw_sp*) ; 

int FUNC8(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_counter_sub_pool *sub_pool;
	struct mlxsw_sp_counter_pool *pool;
	unsigned int base_index;
	unsigned int map_size;
	int i;
	int err;

	if (!FUNC3(mlxsw_sp->core, COUNTER_POOL_SIZE))
		return -EIO;

	err = FUNC6(mlxsw_sp);
	if (err)
		return err;

	err = FUNC7(mlxsw_sp);
	if (err)
		return err;

	pool = FUNC5(sizeof(*pool), GFP_KERNEL);
	if (!pool)
		return -ENOMEM;

	pool->pool_size = FUNC2(mlxsw_sp->core, COUNTER_POOL_SIZE);
	map_size = FUNC1(pool->pool_size) * sizeof(unsigned long);

	pool->usage = FUNC5(map_size, GFP_KERNEL);
	if (!pool->usage) {
		err = -ENOMEM;
		goto err_usage_alloc;
	}

	pool->sub_pools = mlxsw_sp_counter_sub_pools;
	/* Allocation is based on bank count which should be
	 * specified for each sub pool statically.
	 */
	base_index = 0;
	for (i = 0; i < FUNC0(mlxsw_sp_counter_sub_pools); i++) {
		sub_pool = &pool->sub_pools[i];
		sub_pool->size = sub_pool->bank_count *
				 MLXSW_SP_COUNTER_POOL_BANK_SIZE;
		sub_pool->base_index = base_index;
		base_index += sub_pool->size;
		/* The last bank can't be fully used */
		if (sub_pool->base_index + sub_pool->size > pool->pool_size)
			sub_pool->size = pool->pool_size - sub_pool->base_index;
	}

	mlxsw_sp->counter_pool = pool;
	return 0;

err_usage_alloc:
	FUNC4(pool);
	return err;
}