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
struct TYPE_4__ {int /*<<< orphan*/  pin_config; } ;
struct TYPE_3__ {int /*<<< orphan*/  out_work; } ;
struct mlx5_clock {TYPE_2__ ptp_info; int /*<<< orphan*/  overflow_work; TYPE_1__ pps_info; int /*<<< orphan*/ * ptp; int /*<<< orphan*/  pps_nb; } ;
struct mlx5_core_dev {int /*<<< orphan*/ * clock_info; struct mlx5_clock clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  device_frequency_khz ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mlx5_core_dev *mdev)
{
	struct mlx5_clock *clock = &mdev->clock;

	if (!FUNC0(mdev, device_frequency_khz))
		return;

	FUNC5(mdev, &clock->pps_nb);
	if (clock->ptp) {
		FUNC6(clock->ptp);
		clock->ptp = NULL;
	}

	FUNC2(&clock->pps_info.out_work);
	FUNC1(&clock->overflow_work);

	if (mdev->clock_info) {
		FUNC3((unsigned long)mdev->clock_info);
		mdev->clock_info = NULL;
	}

	FUNC4(clock->ptp_info.pin_config);
}