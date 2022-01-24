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
struct mlx5_lag {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  lag_mutex ; 
 struct mlx5_lag* FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct mlx5_core_dev *dev)
{
	struct mlx5_lag *ldev;
	bool res;

	FUNC2(&lag_mutex);
	ldev = FUNC1(dev);
	res  = ldev && FUNC0(ldev);
	FUNC3(&lag_mutex);

	return res;
}