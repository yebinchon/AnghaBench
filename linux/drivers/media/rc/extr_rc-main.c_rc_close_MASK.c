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
struct rc_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* close ) (struct rc_dev*) ;scalar_t__ registered; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*) ; 

void FUNC3(struct rc_dev *rdev)
{
	if (rdev) {
		FUNC0(&rdev->lock);

		if (!--rdev->users && rdev->close && rdev->registered)
			rdev->close(rdev);

		FUNC1(&rdev->lock);
	}
}