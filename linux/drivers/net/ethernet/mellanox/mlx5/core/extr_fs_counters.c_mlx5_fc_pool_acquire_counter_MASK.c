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
struct mlx5_fc_pool {int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  used_fcs; int /*<<< orphan*/  available_fcs; int /*<<< orphan*/  partially_used; int /*<<< orphan*/  unused; int /*<<< orphan*/  fully_used; } ;
struct mlx5_fc_bulk {int /*<<< orphan*/  pool_list; } ;
struct mlx5_fc {int /*<<< orphan*/  pool_list; } ;

/* Variables and functions */
 struct mlx5_fc_bulk* FUNC0 (struct mlx5_fc_bulk*) ; 
 scalar_t__ FUNC1 (struct mlx5_fc_bulk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx5_fc_bulk* FUNC3 (struct mlx5_fc_bulk*) ; 
 struct mlx5_fc_bulk* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct mlx5_fc_bulk* FUNC5 (struct mlx5_fc_pool*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_fc *
FUNC8(struct mlx5_fc_pool *fc_pool)
{
	struct mlx5_fc_bulk *new_bulk;
	struct mlx5_fc *fc;

	FUNC6(&fc_pool->pool_lock);

	fc = FUNC4(&fc_pool->partially_used,
					    &fc_pool->fully_used, false);
	if (FUNC1(fc))
		fc = FUNC4(&fc_pool->unused,
						    &fc_pool->partially_used,
						    true);
	if (FUNC1(fc)) {
		new_bulk = FUNC5(fc_pool);
		if (FUNC1(new_bulk)) {
			fc = FUNC0(new_bulk);
			goto out;
		}
		fc = FUNC3(new_bulk);
		FUNC2(&new_bulk->pool_list, &fc_pool->partially_used);
	}
	fc_pool->available_fcs--;
	fc_pool->used_fcs++;

out:
	FUNC7(&fc_pool->pool_lock);
	return fc;
}