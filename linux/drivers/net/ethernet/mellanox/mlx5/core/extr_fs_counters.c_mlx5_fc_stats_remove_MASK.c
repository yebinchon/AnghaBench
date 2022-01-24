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
struct mlx5_fc_stats {int /*<<< orphan*/  counters_idr_lock; int /*<<< orphan*/  counters_idr; } ;
struct mlx5_fc {int /*<<< orphan*/  id; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5_core_dev *dev,
				 struct mlx5_fc *counter)
{
	struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;

	FUNC2(&counter->list);

	FUNC3(&fc_stats->counters_idr_lock);
	FUNC0(!FUNC1(&fc_stats->counters_idr, counter->id));
	FUNC4(&fc_stats->counters_idr_lock);
}