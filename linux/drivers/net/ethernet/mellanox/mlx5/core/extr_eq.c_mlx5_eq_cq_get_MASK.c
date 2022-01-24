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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_cq_table {int /*<<< orphan*/  tree; } ;
struct mlx5_eq {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_cq {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_cq*) ; 
 struct mlx5_core_cq* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static struct mlx5_core_cq *FUNC5(struct mlx5_eq *eq, u32 cqn)
{
	struct mlx5_cq_table *table = &eq->cq_table;
	struct mlx5_core_cq *cq = NULL;

	FUNC3();
	cq = FUNC2(&table->tree, cqn);
	if (FUNC0(cq))
		FUNC1(cq);
	FUNC4();

	return cq;
}