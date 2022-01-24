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
struct timer_list {int dummy; } ;
struct rc_dev {int /*<<< orphan*/  keylock; int /*<<< orphan*/  keyup_jiffies; } ;

/* Variables and functions */
 struct rc_dev* dev ; 
 struct rc_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_keyup ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct rc_dev *dev = FUNC0(dev, t, timer_keyup);
	unsigned long flags;

	/*
	 * ir->keyup_jiffies is used to prevent a race condition if a
	 * hardware interrupt occurs at this point and the keyup timer
	 * event is moved further into the future as a result.
	 *
	 * The timer will then be reactivated and this function called
	 * again in the future. We need to exit gracefully in that case
	 * to allow the input subsystem to do its auto-repeat magic or
	 * a keyup event might follow immediately after the keydown.
	 */
	FUNC2(&dev->keylock, flags);
	if (FUNC4(dev->keyup_jiffies))
		FUNC1(dev, true);
	FUNC3(&dev->keylock, flags);
}