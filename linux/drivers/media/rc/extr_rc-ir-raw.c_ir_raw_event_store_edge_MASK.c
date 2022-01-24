#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {TYPE_1__* raw; } ;
struct ir_raw_event {int pulse; int /*<<< orphan*/  duration; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  last_event; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct rc_dev*,struct ir_raw_event*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct rc_dev *dev, bool pulse)
{
	ktime_t			now;
	struct ir_raw_event	ev = {};

	if (!dev->raw)
		return -EINVAL;

	now = FUNC1();
	ev.duration = FUNC3(FUNC2(now, dev->raw->last_event));
	ev.pulse = !pulse;

	return FUNC0(dev, &ev);
}