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
struct mlx4_en_dev {int /*<<< orphan*/ * ptp_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx4_en_dev *mdev)
{
	if (mdev->ptp_clock) {
		FUNC1(mdev->ptp_clock);
		mdev->ptp_clock = NULL;
		FUNC0(mdev, "removed PHC\n");
	}
}