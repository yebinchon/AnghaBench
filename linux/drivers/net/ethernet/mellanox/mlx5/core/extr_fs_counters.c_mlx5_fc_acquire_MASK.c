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
struct mlx5_fc {int dummy; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_fc*) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flow_counter_bulk_alloc ; 
 struct mlx5_fc* FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5_fc* FUNC3 (struct mlx5_core_dev*) ; 

__attribute__((used)) static struct mlx5_fc *FUNC4(struct mlx5_core_dev *dev, bool aging)
{
	struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;
	struct mlx5_fc *counter;

	if (aging && FUNC1(dev, flow_counter_bulk_alloc) != 0) {
		counter = FUNC2(&fc_stats->fc_pool);
		if (!FUNC0(counter))
			return counter;
	}

	return FUNC3(dev);
}