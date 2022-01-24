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
struct mlx5_fc_stats {int /*<<< orphan*/  fc_pool; } ;
struct mlx5_fc {scalar_t__ bulk; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,struct mlx5_fc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlx5_fc*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_core_dev *dev, struct mlx5_fc *counter)
{
	struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;

	if (counter->bulk)
		FUNC1(&fc_stats->fc_pool, counter);
	else
		FUNC0(dev, counter);
}