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
struct mlx5dr_rule {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_action {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5dr_rule*,int /*<<< orphan*/ *,struct mlx5dr_match_param*,size_t,struct mlx5dr_action**) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_rule*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_match_param*,struct mlx5dr_match_param*,int) ; 

__attribute__((used)) static int
FUNC3(struct mlx5dr_rule *rule,
			struct mlx5dr_match_param *param,
			size_t num_actions,
			struct mlx5dr_action *actions[])
{
	struct mlx5dr_match_param copy_param = {};
	int ret;

	/* Copy match_param since they will be consumed during the first
	 * nic_rule insertion.
	 */
	FUNC2(&copy_param, param, sizeof(struct mlx5dr_match_param));

	ret = FUNC0(rule, &rule->rx, param,
				      num_actions, actions);
	if (ret)
		return ret;

	ret = FUNC0(rule, &rule->tx, &copy_param,
				      num_actions, actions);
	if (ret)
		goto destroy_rule_nic_rx;

	return 0;

destroy_rule_nic_rx:
	FUNC1(rule, &rule->rx);
	return ret;
}