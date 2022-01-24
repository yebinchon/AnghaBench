#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5dr_ste_send_info {int dummy; } ;
struct mlx5dr_ste {TYPE_3__* htbl; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_of_valid_entries; int /*<<< orphan*/  num_of_collisions; } ;
struct TYPE_6__ {TYPE_2__ ctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmn; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_STE_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5dr_ste*,struct list_head*,struct list_head*) ; 
 struct mlx5dr_ste* FUNC1 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int /*<<< orphan*/ *,struct mlx5dr_ste*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_ste_send_info*) ; 
 struct mlx5dr_ste_send_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_ste*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx5dr_ste_send_info*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ; 

__attribute__((used)) static struct mlx5dr_ste *
FUNC7(struct mlx5dr_matcher *matcher,
			 struct mlx5dr_matcher_rx_tx *nic_matcher,
			 struct mlx5dr_ste *ste,
			 u8 *hw_ste,
			 struct list_head *miss_list,
			 struct list_head *send_list)
{
	struct mlx5dr_ste_send_info *ste_info;
	struct mlx5dr_ste *new_ste;

	ste_info = FUNC3(sizeof(*ste_info), GFP_KERNEL);
	if (!ste_info)
		return NULL;

	new_ste = FUNC1(matcher, nic_matcher, hw_ste, ste);
	if (!new_ste)
		goto free_send_info;

	if (FUNC0(new_ste, miss_list, send_list)) {
		FUNC4(matcher->tbl->dmn, "Failed to update prev miss_list\n");
		goto err_exit;
	}

	FUNC5(new_ste, DR_STE_SIZE, 0, hw_ste,
						  ste_info, send_list, false);

	ste->htbl->ctrl.num_of_collisions++;
	ste->htbl->ctrl.num_of_valid_entries++;

	return new_ste;

err_exit:
	FUNC6(new_ste, matcher, nic_matcher);
free_send_info:
	FUNC2(ste_info);
	return NULL;
}