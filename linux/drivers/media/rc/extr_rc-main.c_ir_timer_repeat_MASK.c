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
struct rc_dev {int /*<<< orphan*/  keylock; int /*<<< orphan*/  timer_repeat; int /*<<< orphan*/  last_keycode; scalar_t__ keypressed; struct input_dev* input_dev; } ;
struct input_dev {scalar_t__* rep; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 size_t REP_PERIOD ; 
 struct rc_dev* dev ; 
 struct rc_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer_repeat ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct rc_dev *dev = FUNC0(dev, t, timer_repeat);
	struct input_dev *input = dev->input_dev;
	unsigned long flags;

	FUNC5(&dev->keylock, flags);
	if (dev->keypressed) {
		FUNC1(input, EV_KEY, dev->last_keycode, 2);
		FUNC2(input);
		if (input->rep[REP_PERIOD])
			FUNC3(&dev->timer_repeat, jiffies +
				  FUNC4(input->rep[REP_PERIOD]));
	}
	FUNC6(&dev->keylock, flags);
}