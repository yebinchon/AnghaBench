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
struct m_can_classdev {scalar_t__ pm_clock_support; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct m_can_classdev *cdev)
{
	int err;

	if (cdev->pm_clock_support == 0)
		return 0;

	err = FUNC0(cdev->dev);
	if (err < 0) {
		FUNC1(cdev->dev);
		return err;
	}

	return 0;
}