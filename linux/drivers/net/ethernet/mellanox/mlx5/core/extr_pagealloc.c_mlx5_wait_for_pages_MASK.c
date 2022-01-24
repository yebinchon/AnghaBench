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
struct mlx5_core_dev {scalar_t__ state; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MAX_RECLAIM_VFS_PAGES_TIME_MSECS ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,...) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

int FUNC5(struct mlx5_core_dev *dev, int *pages)
{
	unsigned long end = jiffies + FUNC2(MAX_RECLAIM_VFS_PAGES_TIME_MSECS);
	int prev_pages = *pages;

	/* In case of internal error we will free the pages manually later */
	if (dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
		FUNC1(dev, "Skipping wait for vf pages stage");
		return 0;
	}

	FUNC0(dev, "Waiting for %d pages\n", prev_pages);
	while (*pages) {
		if (FUNC4(jiffies, end)) {
			FUNC1(dev, "aborting while there are %d pending pages\n", *pages);
			return -ETIMEDOUT;
		}
		if (*pages < prev_pages) {
			end = jiffies + FUNC2(MAX_RECLAIM_VFS_PAGES_TIME_MSECS);
			prev_pages = *pages;
		}
		FUNC3(50);
	}

	FUNC0(dev, "All pages received\n");
	return 0;
}