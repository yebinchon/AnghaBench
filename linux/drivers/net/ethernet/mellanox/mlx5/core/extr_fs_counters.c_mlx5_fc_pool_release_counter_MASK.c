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
struct mlx5_fc_pool {scalar_t__ available_fcs; scalar_t__ threshold; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  unused; int /*<<< orphan*/  partially_used; int /*<<< orphan*/  used_fcs; struct mlx5_core_dev* dev; } ;
struct mlx5_fc_bulk {int bulk_len; int /*<<< orphan*/  pool_list; } ;
struct mlx5_fc {struct mlx5_fc_bulk* bulk; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int FUNC4 (struct mlx5_fc_bulk*) ; 
 scalar_t__ FUNC5 (struct mlx5_fc_bulk*,struct mlx5_fc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fc_pool*,struct mlx5_fc_bulk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct mlx5_fc_pool *fc_pool, struct mlx5_fc *fc)
{
	struct mlx5_core_dev *dev = fc_pool->dev;
	struct mlx5_fc_bulk *bulk = fc->bulk;
	int bulk_free_fcs_amount;

	FUNC7(&fc_pool->pool_lock);

	if (FUNC5(bulk, fc)) {
		FUNC3(dev, "Attempted to release a counter which is not acquired\n");
		goto unlock;
	}

	fc_pool->available_fcs++;
	fc_pool->used_fcs--;

	bulk_free_fcs_amount = FUNC4(bulk);
	if (bulk_free_fcs_amount == 1)
		FUNC2(&bulk->pool_list, &fc_pool->partially_used);
	if (bulk_free_fcs_amount == bulk->bulk_len) {
		FUNC1(&bulk->pool_list);
		if (fc_pool->available_fcs > fc_pool->threshold)
			FUNC6(fc_pool, bulk);
		else
			FUNC0(&bulk->pool_list, &fc_pool->unused);
	}

unlock:
	FUNC8(&fc_pool->pool_lock);
}