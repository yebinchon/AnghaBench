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
struct mlx4_en_dev {scalar_t__ last_overflow_check; int /*<<< orphan*/  clock_lock; int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 scalar_t__ MLX4_EN_OVERFLOW_PERIOD ; 
 scalar_t__ jiffies ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mlx4_en_dev *mdev)
{
	bool timeout = FUNC0(mdev->last_overflow_check +
					      MLX4_EN_OVERFLOW_PERIOD);
	unsigned long flags;

	if (timeout) {
		FUNC2(&mdev->clock_lock, flags);
		FUNC1(&mdev->clock);
		FUNC3(&mdev->clock_lock, flags);
		mdev->last_overflow_check = jiffies;
	}
}