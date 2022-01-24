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
struct mlx5_lag {int /*<<< orphan*/  flags; TYPE_1__* pf; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {struct mlx5_core_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_LAG_MODE_FLAGS ; 
 int FUNC0 (struct mlx5_lag*) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 

__attribute__((used)) static int FUNC3(struct mlx5_lag *ldev)
{
	struct mlx5_core_dev *dev0 = ldev->pf[0].dev;
	bool roce_lag = FUNC0(ldev);
	int err;

	ldev->flags &= ~MLX5_LAG_MODE_FLAGS;

	err = FUNC1(dev0);
	if (err) {
		if (roce_lag) {
			FUNC2(dev0,
				      "Failed to deactivate RoCE LAG; driver restart required\n");
		} else {
			FUNC2(dev0,
				      "Failed to deactivate VF LAG; driver restart required\n"
				      "Make sure all VFs are unbound prior to VF LAG activation or deactivation\n");
		}
	}

	return err;
}