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
struct mlx5_irq_table {int nvec; } ;
struct TYPE_3__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; TYPE_1__ priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *dev)
{
	struct mlx5_irq_table *table = dev->priv.irq_table;
	int i;

	for (i = 0; i < table->nvec; i++)
		FUNC0(FUNC2(dev->pdev, i),
			 &FUNC1(dev, i)->nh);
}