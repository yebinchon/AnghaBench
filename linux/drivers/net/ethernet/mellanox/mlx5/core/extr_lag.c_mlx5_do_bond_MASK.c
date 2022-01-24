#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lag_tracker {scalar_t__ is_bonded; } ;
struct mlx5_lag {struct lag_tracker tracker; TYPE_1__* pf; } ;
struct TYPE_6__ {TYPE_2__* eswitch; } ;
struct mlx5_core_dev {TYPE_3__ priv; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct TYPE_4__ {struct mlx5_core_dev* dev; } ;

/* Variables and functions */
 scalar_t__ MLX5_ESWITCH_NONE ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_IB ; 
 int /*<<< orphan*/  MLX5_LAG_FLAG_ROCE ; 
 int /*<<< orphan*/  MLX5_LAG_FLAG_SRIOV ; 
 scalar_t__ FUNC0 (struct mlx5_lag*) ; 
 int FUNC1 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  lag_mutex ; 
 int FUNC2 (struct mlx5_lag*,struct lag_tracker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_lag*) ; 
 scalar_t__ FUNC6 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_lag*,struct lag_tracker*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct mlx5_lag *ldev)
{
	struct mlx5_core_dev *dev0 = ldev->pf[0].dev;
	struct mlx5_core_dev *dev1 = ldev->pf[1].dev;
	struct lag_tracker tracker;
	bool do_bond, roce_lag;
	int err;

	if (!dev0 || !dev1)
		return;

	FUNC13(&lag_mutex);
	tracker = ldev->tracker;
	FUNC14(&lag_mutex);

	do_bond = tracker.is_bonded && FUNC6(ldev);

	if (do_bond && !FUNC0(ldev)) {
		roce_lag = !FUNC12(dev0) &&
			   !FUNC12(dev1);

#ifdef CONFIG_MLX5_ESWITCH
		roce_lag &= dev0->priv.eswitch->mode == MLX5_ESWITCH_NONE &&
			    dev1->priv.eswitch->mode == MLX5_ESWITCH_NONE;
#endif

		if (roce_lag)
			FUNC7(ldev);

		err = FUNC2(ldev, &tracker,
					roce_lag ? MLX5_LAG_FLAG_ROCE :
					MLX5_LAG_FLAG_SRIOV);
		if (err) {
			if (roce_lag)
				FUNC5(ldev);

			return;
		}

		if (roce_lag) {
			FUNC3(dev0, MLX5_INTERFACE_PROTOCOL_IB);
			FUNC10(dev1);
		}
	} else if (do_bond && FUNC0(ldev)) {
		FUNC8(ldev, &tracker);
	} else if (!do_bond && FUNC0(ldev)) {
		roce_lag = FUNC1(ldev);

		if (roce_lag) {
			FUNC11(dev0, MLX5_INTERFACE_PROTOCOL_IB);
			FUNC9(dev1);
		}

		err = FUNC4(ldev);
		if (err)
			return;

		if (roce_lag)
			FUNC5(ldev);
	}
}