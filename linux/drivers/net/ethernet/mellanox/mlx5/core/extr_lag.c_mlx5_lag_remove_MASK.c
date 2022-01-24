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
struct TYPE_4__ {scalar_t__ notifier_call; } ;
struct mlx5_lag {int /*<<< orphan*/  bond_work; TYPE_2__ nb; TYPE_1__* pf; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ dev; } ;

/* Variables and functions */
 int MLX5_MAX_PORTS ; 
 scalar_t__ FUNC0 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_lag*) ; 
 struct mlx5_lag* FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_lag*,struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(struct mlx5_core_dev *dev)
{
	struct mlx5_lag *ldev;
	int i;

	ldev = FUNC4(dev);
	if (!ldev)
		return;

	if (FUNC0(ldev))
		FUNC2(ldev);

	FUNC5(ldev, dev);

	for (i = 0; i < MLX5_MAX_PORTS; i++)
		if (ldev->pf[i].dev)
			break;

	if (i == MLX5_MAX_PORTS) {
		if (ldev->nb.notifier_call)
			FUNC7(&ldev->nb);
		FUNC6(ldev);
		FUNC1(&ldev->bond_work);
		FUNC3(ldev);
	}
}