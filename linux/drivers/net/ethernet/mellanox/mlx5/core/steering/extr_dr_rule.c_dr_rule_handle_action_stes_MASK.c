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
typedef  int u8 ;
typedef  int u32 ;
struct mlx5dr_ste_send_info {int dummy; } ;
struct mlx5dr_ste {int /*<<< orphan*/  htbl; int /*<<< orphan*/  miss_list_node; } ;
struct mlx5dr_rule_rx_tx {struct mlx5dr_matcher_rx_tx* nic_matcher; } ;
struct mlx5dr_rule {struct mlx5dr_matcher* matcher; } ;
struct mlx5dr_matcher_rx_tx {int num_of_builders; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmn; } ;

/* Variables and functions */
 int DR_ACTION_MAX_STES ; 
 int DR_STE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx5dr_rule_rx_tx*,struct mlx5dr_ste*) ; 
 struct mlx5dr_ste* FUNC1 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_ste_send_info*) ; 
 struct mlx5dr_ste_send_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5dr_ste*,int,int /*<<< orphan*/ ,int*,struct mlx5dr_ste_send_info*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5dr_ste*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5dr_ste*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mlx5dr_rule *rule,
				      struct mlx5dr_rule_rx_tx *nic_rule,
				      struct list_head *send_ste_list,
				      struct mlx5dr_ste *last_ste,
				      u8 *hw_ste_arr,
				      u32 new_hw_ste_arr_sz)
{
	struct mlx5dr_matcher_rx_tx *nic_matcher = nic_rule->nic_matcher;
	struct mlx5dr_ste_send_info *ste_info_arr[DR_ACTION_MAX_STES];
	u8 num_of_builders = nic_matcher->num_of_builders;
	struct mlx5dr_matcher *matcher = rule->matcher;
	u8 *curr_hw_ste, *prev_hw_ste;
	struct mlx5dr_ste *action_ste;
	int i, k, ret;

	/* Two cases:
	 * 1. num_of_builders is equal to new_hw_ste_arr_sz, the action in the ste
	 * 2. num_of_builders is less then new_hw_ste_arr_sz, new ste was added
	 *    to support the action.
	 */
	if (num_of_builders == new_hw_ste_arr_sz)
		return 0;

	for (i = num_of_builders, k = 0; i < new_hw_ste_arr_sz; i++, k++) {
		curr_hw_ste = hw_ste_arr + i * DR_STE_SIZE;
		prev_hw_ste = (i == 0) ? curr_hw_ste : hw_ste_arr + ((i - 1) * DR_STE_SIZE);
		action_ste = FUNC1(matcher,
							   nic_matcher,
							   curr_hw_ste);
		if (!action_ste)
			return -ENOMEM;

		FUNC7(action_ste);

		/* While free ste we go over the miss list, so add this ste to the list */
		FUNC4(&action_ste->miss_list_node,
			      FUNC8(action_ste));

		ste_info_arr[k] = FUNC3(sizeof(*ste_info_arr[k]),
					  GFP_KERNEL);
		if (!ste_info_arr[k])
			goto err_exit;

		/* Point current ste to the new action */
		FUNC10(prev_hw_ste, action_ste->htbl);
		ret = FUNC0(nic_rule, action_ste);
		if (ret) {
			FUNC5(matcher->tbl->dmn, "Failed adding rule member\n");
			goto free_ste_info;
		}
		FUNC6(action_ste, DR_STE_SIZE, 0,
							  curr_hw_ste,
							  ste_info_arr[k],
							  send_ste_list, false);
	}

	return 0;

free_ste_info:
	FUNC2(ste_info_arr[k]);
err_exit:
	FUNC9(action_ste, matcher, nic_matcher);
	return -ENOMEM;
}