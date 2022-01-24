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
struct mlx5dr_rule_action_member {struct mlx5dr_action* action; int /*<<< orphan*/  list; } ;
struct mlx5dr_rule {int /*<<< orphan*/  rule_actions_list; } ;
struct mlx5dr_action {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_rule*) ; 
 struct mlx5dr_rule_action_member* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlx5dr_rule *rule,
				      size_t num_actions,
				      struct mlx5dr_action *actions[])
{
	struct mlx5dr_rule_action_member *action_mem;
	int i;

	for (i = 0; i < num_actions; i++) {
		action_mem = FUNC2(sizeof(*action_mem), GFP_KERNEL);
		if (!action_mem)
			goto free_action_members;

		action_mem->action = actions[i];
		FUNC0(&action_mem->list);
		FUNC3(&action_mem->list, &rule->rule_actions_list);
		FUNC4(&action_mem->action->refcount);
	}

	return 0;

free_action_members:
	FUNC1(rule);
	return -ENOMEM;
}