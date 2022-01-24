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
struct mlx5_irq {int /*<<< orphan*/  nh; int /*<<< orphan*/  name; } ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX5_MAX_IRQ_NAME ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 struct mlx5_irq* FUNC4 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  mlx5_irq_int_handler ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev, int nvec)
{
	char name[MLX5_MAX_IRQ_NAME];
	int err;
	int i;

	for (i = 0; i < nvec; i++) {
		struct mlx5_irq *irq = FUNC4(dev, i);
		int irqn = FUNC5(dev->pdev, i);

		FUNC2(name, i);
		FUNC0(&irq->nh);
		FUNC8(irq->name, MLX5_MAX_IRQ_NAME,
			 "%s@pci:%s", name, FUNC6(dev->pdev));
		err = FUNC7(irqn, mlx5_irq_int_handler, 0, irq->name,
				  &irq->nh);
		if (err) {
			FUNC3(dev, "Failed to request irq\n");
			goto err_request_irq;
		}
	}
	return 0;

err_request_irq:
	for (; i >= 0; i--) {
		struct mlx5_irq *irq = FUNC4(dev, i);
		int irqn = FUNC5(dev->pdev, i);

		FUNC1(irqn, &irq->nh);
	}
	return  err;
}