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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5dr_ste_htbl {int chunk_size; int /*<<< orphan*/ * miss_list; scalar_t__ hw_ste_arr; struct mlx5dr_ste* ste_arr; int /*<<< orphan*/  refcount; int /*<<< orphan*/  byte_mask; int /*<<< orphan*/  lu_type; struct mlx5dr_icm_chunk* chunk; } ;
struct mlx5dr_ste {int /*<<< orphan*/  rule_list; int /*<<< orphan*/  miss_list_node; int /*<<< orphan*/  refcount; struct mlx5dr_ste_htbl* htbl; scalar_t__ hw_ste; } ;
struct mlx5dr_icm_pool {int dummy; } ;
struct mlx5dr_icm_chunk {int num_of_entries; int /*<<< orphan*/ * miss_list; scalar_t__ hw_ste_arr; struct mlx5dr_ste* ste_arr; } ;
typedef  enum mlx5dr_icm_chunk_size { ____Placeholder_mlx5dr_icm_chunk_size } mlx5dr_icm_chunk_size ;

/* Variables and functions */
 int DR_STE_SIZE_REDUCED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_ste_htbl*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_ste_htbl*) ; 
 struct mlx5dr_ste_htbl* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct mlx5dr_icm_chunk* FUNC4 (struct mlx5dr_icm_pool*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct mlx5dr_ste_htbl *FUNC6(struct mlx5dr_icm_pool *pool,
					      enum mlx5dr_icm_chunk_size chunk_size,
					      u8 lu_type, u16 byte_mask)
{
	struct mlx5dr_icm_chunk *chunk;
	struct mlx5dr_ste_htbl *htbl;
	int i;

	htbl = FUNC3(sizeof(*htbl), GFP_KERNEL);
	if (!htbl)
		return NULL;

	chunk = FUNC4(pool, chunk_size);
	if (!chunk)
		goto out_free_htbl;

	htbl->chunk = chunk;
	htbl->lu_type = lu_type;
	htbl->byte_mask = byte_mask;
	htbl->ste_arr = chunk->ste_arr;
	htbl->hw_ste_arr = chunk->hw_ste_arr;
	htbl->miss_list = chunk->miss_list;
	FUNC5(&htbl->refcount, 0);

	for (i = 0; i < chunk->num_of_entries; i++) {
		struct mlx5dr_ste *ste = &htbl->ste_arr[i];

		ste->hw_ste = htbl->hw_ste_arr + i * DR_STE_SIZE_REDUCED;
		ste->htbl = htbl;
		FUNC5(&ste->refcount, 0);
		FUNC0(&ste->miss_list_node);
		FUNC0(&htbl->miss_list[i]);
		FUNC0(&ste->rule_list);
	}

	htbl->chunk_size = chunk_size;
	FUNC1(htbl);
	return htbl;

out_free_htbl:
	FUNC2(htbl);
	return NULL;
}