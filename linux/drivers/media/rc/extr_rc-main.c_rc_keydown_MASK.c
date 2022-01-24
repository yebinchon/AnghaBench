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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rc_dev {int /*<<< orphan*/  keylock; scalar_t__ keyup_jiffies; int /*<<< orphan*/  timer_keyup; int /*<<< orphan*/  timeout; scalar_t__ keypressed; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct rc_dev *dev, enum rc_proto protocol, u32 scancode,
		u8 toggle)
{
	unsigned long flags;
	u32 keycode = FUNC4(dev, scancode);

	FUNC6(&dev->keylock, flags);
	FUNC0(dev, protocol, scancode, keycode, toggle);

	if (dev->keypressed) {
		dev->keyup_jiffies = jiffies + FUNC3(dev->timeout) +
			FUNC2(FUNC5(protocol));
		FUNC1(&dev->timer_keyup, dev->keyup_jiffies);
	}
	FUNC7(&dev->keylock, flags);
}