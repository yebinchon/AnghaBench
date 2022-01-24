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
struct mlx5dr_icm_pool {scalar_t__ icm_type; } ;
struct mlx5dr_icm_bucket {int /*<<< orphan*/  sync_list; int /*<<< orphan*/  hot_list; int /*<<< orphan*/  used_list; int /*<<< orphan*/  free_list; int /*<<< orphan*/  mutex; struct mlx5dr_icm_pool* pool; int /*<<< orphan*/  num_of_entries; int /*<<< orphan*/  entry_size; } ;
typedef  enum mlx5dr_icm_chunk_size { ____Placeholder_mlx5dr_icm_chunk_size } mlx5dr_icm_chunk_size ;

/* Variables and functions */
 scalar_t__ DR_ICM_TYPE_STE ; 
 int /*<<< orphan*/  DR_MODIFY_ACTION_SIZE ; 
 int /*<<< orphan*/  DR_STE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5dr_icm_pool *pool,
			       struct mlx5dr_icm_bucket *bucket,
			       enum mlx5dr_icm_chunk_size chunk_size)
{
	if (pool->icm_type == DR_ICM_TYPE_STE)
		bucket->entry_size = DR_STE_SIZE;
	else
		bucket->entry_size = DR_MODIFY_ACTION_SIZE;

	bucket->num_of_entries = FUNC1(chunk_size);
	bucket->pool = pool;
	FUNC2(&bucket->mutex);
	FUNC0(&bucket->free_list);
	FUNC0(&bucket->used_list);
	FUNC0(&bucket->hot_list);
	FUNC0(&bucket->sync_list);
}