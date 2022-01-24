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
struct mlx5_eq {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_cq {int /*<<< orphan*/  cqn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5_core_cq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mlx5_eq *eq, struct mlx5_core_cq *cq)
{
	struct mlx5_cq_table *table = &eq->cq_table;
	int err;

	FUNC1(&table->lock);
	err = FUNC0(&table->tree, cq->cqn, cq);
	FUNC2(&table->lock);

	return err;
}