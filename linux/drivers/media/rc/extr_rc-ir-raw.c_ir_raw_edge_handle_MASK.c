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
struct timer_list {int dummy; } ;
struct rc_dev {scalar_t__ timeout; TYPE_1__* raw; } ;
struct ir_raw_event_ctrl {struct rc_dev* dev; } ;
struct ir_raw_event {int timeout; scalar_t__ duration; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  edge_spinlock; int /*<<< orphan*/  edge_handle; int /*<<< orphan*/  last_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  edge_handle ; 
 struct ir_raw_event_ctrl* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*,struct ir_raw_event*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct ir_raw_event_ctrl* raw ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct ir_raw_event_ctrl *raw = FUNC0(raw, t, edge_handle);
	struct rc_dev *dev = raw->dev;
	unsigned long flags;
	ktime_t interval;

	FUNC8(&dev->raw->edge_spinlock, flags);
	interval = FUNC4(FUNC3(), dev->raw->last_event);
	if (FUNC5(interval) >= dev->timeout) {
		struct ir_raw_event ev = {
			.timeout = true,
			.duration = FUNC5(interval)
		};

		FUNC2(dev, &ev);
	} else {
		FUNC6(&dev->raw->edge_handle,
			  jiffies + FUNC7(dev->timeout -
						     FUNC5(interval)));
	}
	FUNC9(&dev->raw->edge_spinlock, flags);

	FUNC1(dev);
}