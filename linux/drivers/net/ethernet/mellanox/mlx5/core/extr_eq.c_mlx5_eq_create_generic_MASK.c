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
struct mlx5_eq_param {int dummy; } ;
struct mlx5_eq {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_eq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_eq*,struct mlx5_eq_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eq*) ; 
 struct mlx5_eq* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct mlx5_eq *
FUNC4(struct mlx5_core_dev *dev,
		       struct mlx5_eq_param *param)
{
	struct mlx5_eq *eq = FUNC3(sizeof(*eq), GFP_KERNEL);
	int err;

	if (!eq)
		return FUNC0(-ENOMEM);

	err = FUNC1(dev, eq, param);
	if (err) {
		FUNC2(eq);
		eq = FUNC0(err);
	}

	return eq;
}