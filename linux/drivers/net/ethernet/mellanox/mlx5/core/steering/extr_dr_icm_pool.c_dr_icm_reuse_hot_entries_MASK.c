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
typedef  scalar_t__ u64 ;
struct mlx5dr_icm_pool {int dummy; } ;
struct mlx5dr_icm_bucket {int /*<<< orphan*/  hot_list_count; } ;

/* Variables and functions */
 scalar_t__ DR_ICM_SYNC_THRESHOLD ; 
 scalar_t__ FUNC0 (struct mlx5dr_icm_pool*) ; 

__attribute__((used)) static bool FUNC1(struct mlx5dr_icm_pool *pool,
				     struct mlx5dr_icm_bucket *bucket)
{
	u64 bytes_for_sync;

	bytes_for_sync = FUNC0(pool);
	if (bytes_for_sync < DR_ICM_SYNC_THRESHOLD || !bucket->hot_list_count)
		return false;

	return true;
}