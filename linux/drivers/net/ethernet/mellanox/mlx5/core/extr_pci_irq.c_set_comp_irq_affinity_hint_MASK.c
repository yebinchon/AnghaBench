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
struct mlx5_irq {int /*<<< orphan*/  mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  numa_node; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MLX5_IRQ_VEC_COMP_BASE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,...) ; 
 struct mlx5_irq* FUNC5 (struct mlx5_core_dev*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlx5_core_dev *mdev, int i)
{
	int vecidx = MLX5_IRQ_VEC_COMP_BASE + i;
	struct mlx5_irq *irq;
	int irqn;

	irq = FUNC5(mdev, vecidx);
	irqn = FUNC6(mdev->pdev, vecidx);
	if (!FUNC7(&irq->mask, GFP_KERNEL)) {
		FUNC4(mdev, "zalloc_cpumask_var failed");
		return -ENOMEM;
	}

	FUNC2(FUNC1(i, mdev->priv.numa_node),
			irq->mask);
	if (FUNC0(CONFIG_SMP) &&
	    FUNC3(irqn, irq->mask))
		FUNC4(mdev, "irq_set_affinity_hint failed, irq 0x%.4x",
			       irqn);

	return 0;
}