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
struct mlx5_eq {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlx5_eq*) ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_eq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eq*) ; 

int FUNC3(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
	int err;

	if (FUNC0(eq))
		return -EINVAL;

	err = FUNC1(dev, eq);
	if (err)
		goto out;

	FUNC2(eq);
out:
	return err;
}