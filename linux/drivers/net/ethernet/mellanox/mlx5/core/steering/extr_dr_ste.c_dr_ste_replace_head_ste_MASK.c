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
struct mlx5dr_ste_send_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_of_valid_entries; int /*<<< orphan*/  num_of_collisions; } ;
struct mlx5dr_ste_htbl {TYPE_1__ ctrl; } ;
struct mlx5dr_ste {int /*<<< orphan*/  hw_ste; int /*<<< orphan*/  miss_list_node; struct mlx5dr_ste_htbl* htbl; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_STE_SIZE_REDUCED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_ste*,struct mlx5dr_ste*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_ste_htbl*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_ste*,struct mlx5dr_ste*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_ste*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5dr_ste_send_info*,struct list_head*,int) ; 

__attribute__((used)) static void
FUNC5(struct mlx5dr_ste *ste, struct mlx5dr_ste *next_ste,
			struct mlx5dr_ste_send_info *ste_info_head,
			struct list_head *send_ste_list,
			struct mlx5dr_ste_htbl *stats_tbl)

{
	struct mlx5dr_ste_htbl *next_miss_htbl;

	next_miss_htbl = next_ste->htbl;

	/* Remove from the miss_list the next_ste before copy */
	FUNC1(&next_ste->miss_list_node);

	/* All rule-members that use next_ste should know about that */
	FUNC3(next_ste, ste);

	/* Move data from next into ste */
	FUNC0(ste, next_ste);

	/* Del the htbl that contains the next_ste.
	 * The origin htbl stay with the same number of entries.
	 */
	FUNC2(next_miss_htbl);

	FUNC4(ste, DR_STE_SIZE_REDUCED,
						  0, ste->hw_ste,
						  ste_info_head,
						  send_ste_list,
						  true /* Copy data */);

	stats_tbl->ctrl.num_of_collisions--;
	stats_tbl->ctrl.num_of_valid_entries--;
}