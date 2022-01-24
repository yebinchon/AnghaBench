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
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct mlx5_qp_table {TYPE_2__ nb; int /*<<< orphan*/  tree; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_qp_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  rsc_event_notifier ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_qp_table *table = &dev->priv.qp_table;

	FUNC1(table, 0, sizeof(*table));
	FUNC4(&table->lock);
	FUNC0(&table->tree, GFP_ATOMIC);
	FUNC3(dev);

	table->nb.notifier_call = rsc_event_notifier;
	FUNC2(dev, &table->nb);
}