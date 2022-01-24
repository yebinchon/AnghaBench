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
struct lis3lv02d {scalar_t__ pm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIS3_SYSFS_POWERDOWN_DELAY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lis3lv02d *lis3)
{
	/*
	 * SYSFS functions are fast visitors so put-call
	 * immediately after the get-call. However, keep
	 * chip running for a while and schedule delayed
	 * suspend. This way periodic sysfs calls doesn't
	 * suffer from relatively long power up time.
	 */

	if (lis3->pm_dev) {
		FUNC0(lis3->pm_dev);
		FUNC1(lis3->pm_dev);
		FUNC2(lis3->pm_dev, LIS3_SYSFS_POWERDOWN_DELAY);
	}
}