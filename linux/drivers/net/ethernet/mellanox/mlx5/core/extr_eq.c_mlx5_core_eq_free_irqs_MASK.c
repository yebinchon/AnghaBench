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
struct mlx5_eq_table {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_core_dev *dev)
{
	struct mlx5_eq_table *table = dev->priv.eq_table;

	FUNC1(&table->lock); /* sync with create/destroy_async_eq */
	FUNC0(dev);
	FUNC2(&table->lock);
}