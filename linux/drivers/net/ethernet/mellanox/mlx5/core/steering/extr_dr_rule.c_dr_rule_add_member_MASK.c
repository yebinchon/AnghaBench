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
struct mlx5dr_ste {int /*<<< orphan*/  rule_list; } ;
struct mlx5dr_rule_rx_tx {int /*<<< orphan*/  rule_members_list; } ;
struct mlx5dr_rule_member {int /*<<< orphan*/  use_ste_list; int /*<<< orphan*/  list; struct mlx5dr_ste* ste; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx5dr_rule_member* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mlx5dr_rule_rx_tx *nic_rule,
			      struct mlx5dr_ste *ste)
{
	struct mlx5dr_rule_member *rule_mem;

	rule_mem = FUNC0(sizeof(*rule_mem), GFP_KERNEL);
	if (!rule_mem)
		return -ENOMEM;

	rule_mem->ste = ste;
	FUNC1(&rule_mem->list, &nic_rule->rule_members_list);

	FUNC1(&rule_mem->use_ste_list, &ste->rule_list);

	return 0;
}