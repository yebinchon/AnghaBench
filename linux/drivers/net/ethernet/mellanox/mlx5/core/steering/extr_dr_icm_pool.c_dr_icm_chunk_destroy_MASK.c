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
struct mlx5dr_icm_chunk {int /*<<< orphan*/  chunk_list; struct mlx5dr_icm_bucket* bucket; } ;
struct mlx5dr_icm_bucket {TYPE_1__* pool; int /*<<< orphan*/  total_chunks; } ;
struct TYPE_2__ {scalar_t__ icm_type; } ;

/* Variables and functions */
 scalar_t__ DR_ICM_TYPE_STE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_icm_chunk*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_icm_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5dr_icm_chunk *chunk)
{
	struct mlx5dr_icm_bucket *bucket = chunk->bucket;

	FUNC2(&chunk->chunk_list);
	bucket->total_chunks--;

	if (bucket->pool->icm_type == DR_ICM_TYPE_STE)
		FUNC0(chunk);

	FUNC1(chunk);
}