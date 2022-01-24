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
struct rc_dev {scalar_t__ allowed_protocols; int /*<<< orphan*/  keylock; scalar_t__ keyup_jiffies; int /*<<< orphan*/  timer_keyup; scalar_t__ keypressed; int /*<<< orphan*/  input_dev; int /*<<< orphan*/  last_scancode; int /*<<< orphan*/  last_toggle; int /*<<< orphan*/  last_keycode; int /*<<< orphan*/  last_protocol; int /*<<< orphan*/  timeout; } ;
struct lirc_scancode {int flags; int /*<<< orphan*/  keycode; int /*<<< orphan*/  rc_proto; int /*<<< orphan*/  scancode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int LIRC_SCANCODE_FLAG_REPEAT ; 
 int LIRC_SCANCODE_FLAG_TOGGLE ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 scalar_t__ RC_PROTO_BIT_CEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*,struct lirc_scancode*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct rc_dev *dev)
{
	unsigned long flags;
	unsigned int timeout = FUNC5(dev->timeout) +
		FUNC4(FUNC6(dev->last_protocol));
	struct lirc_scancode sc = {
		.scancode = dev->last_scancode, .rc_proto = dev->last_protocol,
		.keycode = dev->keypressed ? dev->last_keycode : KEY_RESERVED,
		.flags = LIRC_SCANCODE_FLAG_REPEAT |
			 (dev->last_toggle ? LIRC_SCANCODE_FLAG_TOGGLE : 0)
	};

	if (dev->allowed_protocols != RC_PROTO_BIT_CEC)
		FUNC2(dev, &sc);

	FUNC7(&dev->keylock, flags);

	FUNC0(dev->input_dev, EV_MSC, MSC_SCAN, dev->last_scancode);
	FUNC1(dev->input_dev);

	if (dev->keypressed) {
		dev->keyup_jiffies = jiffies + timeout;
		FUNC3(&dev->timer_keyup, dev->keyup_jiffies);
	}

	FUNC8(&dev->keylock, flags);
}