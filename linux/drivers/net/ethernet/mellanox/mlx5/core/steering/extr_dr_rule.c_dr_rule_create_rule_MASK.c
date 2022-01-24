#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * nic_matcher; } ;
struct mlx5dr_rule {TYPE_2__ tx; TYPE_2__ rx; int /*<<< orphan*/  rule_actions_list; struct mlx5dr_matcher* matcher; } ;
struct mlx5dr_matcher {int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; TYPE_1__* tbl; } ;
struct mlx5dr_match_parameters {int dummy; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_domain {int type; } ;
struct mlx5dr_action {int dummy; } ;
struct TYPE_3__ {struct mlx5dr_domain* dmn; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  MLX5DR_DOMAIN_TYPE_FDB 130 
#define  MLX5DR_DOMAIN_TYPE_NIC_RX 129 
#define  MLX5DR_DOMAIN_TYPE_NIC_TX 128 
 int FUNC1 (struct mlx5dr_rule*,size_t,struct mlx5dr_action**) ; 
 int FUNC2 (struct mlx5dr_rule*,struct mlx5dr_match_param*,size_t,struct mlx5dr_action**) ; 
 int FUNC3 (struct mlx5dr_rule*,TYPE_2__*,struct mlx5dr_match_param*,size_t,struct mlx5dr_action**) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_rule*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_matcher*,struct mlx5dr_match_parameters*,struct mlx5dr_match_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5dr_rule*) ; 
 struct mlx5dr_rule* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5dr_domain*,char*) ; 

__attribute__((used)) static struct mlx5dr_rule *
FUNC9(struct mlx5dr_matcher *matcher,
		    struct mlx5dr_match_parameters *value,
		    size_t num_actions,
		    struct mlx5dr_action *actions[])
{
	struct mlx5dr_domain *dmn = matcher->tbl->dmn;
	struct mlx5dr_match_param param = {};
	struct mlx5dr_rule *rule;
	int ret;

	if (!FUNC5(matcher, value, &param))
		return NULL;

	rule = FUNC7(sizeof(*rule), GFP_KERNEL);
	if (!rule)
		return NULL;

	rule->matcher = matcher;
	FUNC0(&rule->rule_actions_list);

	ret = FUNC1(rule, num_actions, actions);
	if (ret)
		goto free_rule;

	switch (dmn->type) {
	case MLX5DR_DOMAIN_TYPE_NIC_RX:
		rule->rx.nic_matcher = &matcher->rx;
		ret = FUNC3(rule, &rule->rx, &param,
					      num_actions, actions);
		break;
	case MLX5DR_DOMAIN_TYPE_NIC_TX:
		rule->tx.nic_matcher = &matcher->tx;
		ret = FUNC3(rule, &rule->tx, &param,
					      num_actions, actions);
		break;
	case MLX5DR_DOMAIN_TYPE_FDB:
		rule->rx.nic_matcher = &matcher->rx;
		rule->tx.nic_matcher = &matcher->tx;
		ret = FUNC2(rule, &param,
					      num_actions, actions);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	if (ret)
		goto remove_action_members;

	return rule;

remove_action_members:
	FUNC4(rule);
free_rule:
	FUNC6(rule);
	FUNC8(dmn, "Failed creating rule\n");
	return NULL;
}