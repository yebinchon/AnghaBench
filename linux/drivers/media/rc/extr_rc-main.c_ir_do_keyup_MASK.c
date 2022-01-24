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
struct rc_dev {int keypressed; int /*<<< orphan*/  input_dev; int /*<<< orphan*/  last_keycode; int /*<<< orphan*/  timer_repeat; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_feedback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rc_dev *dev, bool sync)
{
	if (!dev->keypressed)
		return;

	FUNC1(&dev->dev, "keyup key 0x%04x\n", dev->last_keycode);
	FUNC0(&dev->timer_repeat);
	FUNC2(dev->input_dev, dev->last_keycode, 0);
	FUNC4(led_feedback, LED_OFF);
	if (sync)
		FUNC3(dev->input_dev);
	dev->keypressed = false;
}