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
struct mlx5_eq_table {int /*<<< orphan*/  irq_table; int /*<<< orphan*/  num_comp_eqs; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_eq_table *eq_table = dev->priv.eq_table;
	int err;

	eq_table->num_comp_eqs =
		FUNC4(eq_table->irq_table);

	err = FUNC0(dev);
	if (err) {
		FUNC3(dev, "Failed to create async EQs\n");
		goto err_async_eqs;
	}

	err = FUNC1(dev);
	if (err) {
		FUNC3(dev, "Failed to create completion EQs\n");
		goto err_comp_eqs;
	}

	return 0;
err_comp_eqs:
	FUNC2(dev);
err_async_eqs:
	return err;
}