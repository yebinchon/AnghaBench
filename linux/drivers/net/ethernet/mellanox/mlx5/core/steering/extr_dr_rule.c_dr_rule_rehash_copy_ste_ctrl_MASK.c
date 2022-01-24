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
struct mlx5dr_ste {int /*<<< orphan*/  rule_list; int /*<<< orphan*/  refcount; TYPE_1__* next_htbl; int /*<<< orphan*/  ste_chain_location; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {int dummy; } ;
struct TYPE_2__ {struct mlx5dr_ste* pointing_ste; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_ste*,struct mlx5dr_ste*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_matcher_rx_tx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5dr_matcher *matcher,
					 struct mlx5dr_matcher_rx_tx *nic_matcher,
					 struct mlx5dr_ste *cur_ste,
					 struct mlx5dr_ste *new_ste)
{
	new_ste->next_htbl = cur_ste->next_htbl;
	new_ste->ste_chain_location = cur_ste->ste_chain_location;

	if (!FUNC3(nic_matcher, new_ste->ste_chain_location))
		new_ste->next_htbl->pointing_ste = new_ste;

	/* We need to copy the refcount since this ste
	 * may have been traversed several times
	 */
	FUNC5(&new_ste->refcount, FUNC4(&cur_ste->refcount));

	/* Link old STEs rule_mem list to the new ste */
	FUNC2(cur_ste, new_ste);
	FUNC0(&new_ste->rule_list);
	FUNC1(&cur_ste->rule_list, &new_ste->rule_list);
}