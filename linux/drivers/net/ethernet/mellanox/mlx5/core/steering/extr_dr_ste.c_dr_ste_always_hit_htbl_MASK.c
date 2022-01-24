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
struct mlx5dr_ste_htbl {int /*<<< orphan*/  lu_type; int /*<<< orphan*/  byte_mask; struct mlx5dr_icm_chunk* chunk; } ;
struct mlx5dr_ste {int /*<<< orphan*/ * hw_ste; } ;
struct mlx5dr_icm_chunk {int /*<<< orphan*/  num_of_entries; int /*<<< orphan*/  icm_addr; } ;
struct dr_hw_ste_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  byte_mask ; 
 int /*<<< orphan*/  FUNC1 (struct dr_hw_ste_format*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_lu_type ; 
 int /*<<< orphan*/  ste_general ; 

__attribute__((used)) static void FUNC3(struct mlx5dr_ste *ste,
				   struct mlx5dr_ste_htbl *next_htbl)
{
	struct mlx5dr_icm_chunk *chunk = next_htbl->chunk;
	u8 *hw_ste = ste->hw_ste;

	FUNC0(ste_general, hw_ste, byte_mask, next_htbl->byte_mask);
	FUNC0(ste_general, hw_ste, next_lu_type, next_htbl->lu_type);
	FUNC2(hw_ste, chunk->icm_addr, chunk->num_of_entries);

	FUNC1((struct dr_hw_ste_format *)ste->hw_ste);
}