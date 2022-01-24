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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  irqn; scalar_t__ cons_index; } ;
struct mlx5_eq_comp {TYPE_1__ core; int /*<<< orphan*/  irq_nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

u32 FUNC3(struct mlx5_eq_comp *eq)
{
	u32 count_eqe;

	FUNC0(eq->core.irqn);
	count_eqe = eq->core.cons_index;
	FUNC2(&eq->irq_nb, 0, NULL);
	count_eqe = eq->core.cons_index - count_eqe;
	FUNC1(eq->core.irqn);

	return count_eqe;
}