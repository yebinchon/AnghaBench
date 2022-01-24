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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fc_stats {int /*<<< orphan*/  work; int /*<<< orphan*/  wq; int /*<<< orphan*/  addlist; int /*<<< orphan*/  counters_idr_lock; int /*<<< orphan*/  counters_idr; } ;
struct TYPE_4__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; int /*<<< orphan*/  lastuse; } ;
struct mlx5_fc {int aging; int /*<<< orphan*/  addlist; TYPE_2__ cache; int /*<<< orphan*/  lastpackets; int /*<<< orphan*/  lastbytes; int /*<<< orphan*/  id; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 struct mlx5_fc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlx5_fc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mlx5_fc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx5_fc* FUNC7 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,struct mlx5_fc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct mlx5_fc *FUNC12(struct mlx5_core_dev *dev, bool aging)
{
	struct mlx5_fc *counter = FUNC7(dev, aging);
	struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;
	int err;

	if (FUNC2(counter))
		return counter;

	FUNC1(&counter->list);
	counter->aging = aging;

	if (aging) {
		u32 id = counter->id;

		counter->cache.lastuse = jiffies;
		counter->lastbytes = counter->cache.bytes;
		counter->lastpackets = counter->cache.packets;

		FUNC4(GFP_KERNEL);
		FUNC10(&fc_stats->counters_idr_lock);

		err = FUNC3(&fc_stats->counters_idr, counter, &id, id,
				    GFP_NOWAIT);

		FUNC11(&fc_stats->counters_idr_lock);
		FUNC5();
		if (err)
			goto err_out_alloc;

		FUNC6(&counter->addlist, &fc_stats->addlist);

		FUNC9(fc_stats->wq, &fc_stats->work, 0);
	}

	return counter;

err_out_alloc:
	FUNC8(dev, counter);
	return FUNC0(err);
}