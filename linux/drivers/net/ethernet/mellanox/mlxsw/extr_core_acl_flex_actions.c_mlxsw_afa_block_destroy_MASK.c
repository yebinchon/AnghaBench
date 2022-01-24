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
struct mlxsw_afa_set {struct mlxsw_afa_set* next; } ;
struct mlxsw_afa_block {int /*<<< orphan*/  afa; struct mlxsw_afa_set* first_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlxsw_afa_set*) ; 

void FUNC3(struct mlxsw_afa_block *block)
{
	struct mlxsw_afa_set *set = block->first_set;
	struct mlxsw_afa_set *next_set;

	do {
		next_set = set->next;
		FUNC2(block->afa, set);
		set = next_set;
	} while (set);
	FUNC1(block);
	FUNC0(block);
}