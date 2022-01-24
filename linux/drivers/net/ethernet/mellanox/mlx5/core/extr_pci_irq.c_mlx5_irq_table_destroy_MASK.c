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
struct mlx5_irq_table {int nvec; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; TYPE_1__ priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  nh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(struct mlx5_core_dev *dev)
{
	struct mlx5_irq_table *table = dev->priv.irq_table;
	int i;

	/* free_irq requires that affinity and rmap will be cleared
	 * before calling it. This is why there is asymmetry with set_rmap
	 * which should be called after alloc_irq but before request_irq.
	 */
	FUNC2(dev);
	FUNC0(dev);
	for (i = 0; i < table->nvec; i++)
		FUNC1(FUNC6(dev->pdev, i),
			 &FUNC4(dev, i)->nh);
	FUNC5(dev->pdev);
	FUNC3(table->irq);
}