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
struct mlx5_fc_stats {int /*<<< orphan*/  bulk_query_out; int /*<<< orphan*/  fc_pool; int /*<<< orphan*/  work; int /*<<< orphan*/  sampling_interval; int /*<<< orphan*/  wq; int /*<<< orphan*/  dellist; int /*<<< orphan*/  addlist; int /*<<< orphan*/  counters; int /*<<< orphan*/  counters_idr; int /*<<< orphan*/  counters_idr_lock; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_FC_STATS_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  mlx5_fc_stats_work ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mlx5_core_dev *dev)
{
	struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;
	int max_bulk_len;
	int max_out_len;

	FUNC10(&fc_stats->counters_idr_lock);
	FUNC4(&fc_stats->counters_idr);
	FUNC1(&fc_stats->counters);
	FUNC5(&fc_stats->addlist);
	FUNC5(&fc_stats->dellist);

	max_bulk_len = FUNC3(dev);
	max_out_len = FUNC8(max_bulk_len);
	fc_stats->bulk_query_out = FUNC7(max_out_len, GFP_KERNEL);
	if (!fc_stats->bulk_query_out)
		return -ENOMEM;

	fc_stats->wq = FUNC2("mlx5_fc");
	if (!fc_stats->wq)
		goto err_wq_create;

	fc_stats->sampling_interval = MLX5_FC_STATS_PERIOD;
	FUNC0(&fc_stats->work, mlx5_fc_stats_work);

	FUNC9(&fc_stats->fc_pool, dev);
	return 0;

err_wq_create:
	FUNC6(fc_stats->bulk_query_out);
	return -ENOMEM;
}