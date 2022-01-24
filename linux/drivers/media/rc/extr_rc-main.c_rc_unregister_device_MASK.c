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
struct rc_dev {scalar_t__ driver_type; int registered; scalar_t__ allowed_protocols; int /*<<< orphan*/  managed_alloc; int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  (* close ) (struct rc_dev*) ;scalar_t__ users; int /*<<< orphan*/  timer_repeat; int /*<<< orphan*/  timer_keyup; } ;

/* Variables and functions */
 scalar_t__ RC_DRIVER_IR_RAW ; 
 scalar_t__ RC_PROTO_BIT_CEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rc_dev*) ; 
 int /*<<< orphan*/  rc_ida ; 
 int /*<<< orphan*/  FUNC9 (struct rc_dev*) ; 

void FUNC10(struct rc_dev *dev)
{
	if (!dev)
		return;

	if (dev->driver_type == RC_DRIVER_IR_RAW)
		FUNC4(dev);

	FUNC0(&dev->timer_keyup);
	FUNC0(&dev->timer_repeat);

	FUNC8(dev);

	FUNC5(&dev->lock);
	if (dev->users && dev->close)
		dev->close(dev);
	dev->registered = false;
	FUNC6(&dev->lock);

	/*
	 * lirc device should be freed with dev->registered = false, so
	 * that userspace polling will get notified.
	 */
	if (dev->allowed_protocols != RC_PROTO_BIT_CEC)
		FUNC3(dev);

	FUNC1(&dev->dev);

	FUNC2(&rc_ida, dev->minor);

	if (!dev->managed_alloc)
		FUNC7(dev);
}