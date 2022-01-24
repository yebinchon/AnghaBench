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
struct mlx5_cq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx5_eq {int /*<<< orphan*/  eqn; int /*<<< orphan*/  dev; struct mlx5_cq_table cq_table; } ;
struct mlx5_core_cq {int /*<<< orphan*/  cqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_core_cq* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5_eq *eq, struct mlx5_core_cq *cq)
{
	struct mlx5_cq_table *table = &eq->cq_table;
	struct mlx5_core_cq *tmp;

	FUNC2(&table->lock);
	tmp = FUNC1(&table->tree, cq->cqn);
	FUNC3(&table->lock);

	if (!tmp) {
		FUNC0(eq->dev, "cq 0x%x not found in eq 0x%x tree\n",
			      eq->eqn, cq->cqn);
		return;
	}

	if (tmp != cq)
		FUNC0(eq->dev, "corruption on cqn 0x%x in eq 0x%x\n",
			      eq->eqn, cq->cqn);
}