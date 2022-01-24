#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {TYPE_1__* raw; } ;
struct ir_raw_event {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_5__ {int /*<<< orphan*/  expires; } ;
struct TYPE_4__ {int /*<<< orphan*/  edge_spinlock; TYPE_2__ edge_handle; int /*<<< orphan*/  last_event; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct rc_dev*,struct ir_raw_event*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

int FUNC8(struct rc_dev *dev, struct ir_raw_event *ev)
{
	ktime_t		now;
	int		rc = 0;

	if (!dev->raw)
		return -EINVAL;

	now = FUNC1();

	FUNC4(&dev->raw->edge_spinlock);
	rc = FUNC0(dev, ev);

	dev->raw->last_event = now;

	/* timer could be set to timeout (125ms by default) */
	if (!FUNC7(&dev->raw->edge_handle) ||
	    FUNC6(dev->raw->edge_handle.expires,
		       jiffies + FUNC3(15))) {
		FUNC2(&dev->raw->edge_handle,
			  jiffies + FUNC3(15));
	}
	FUNC5(&dev->raw->edge_spinlock);

	return rc;
}