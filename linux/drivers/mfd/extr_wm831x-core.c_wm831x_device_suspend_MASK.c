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
struct wm831x {int /*<<< orphan*/  dev; scalar_t__ charger_irq_wake; } ;

/* Variables and functions */
 int WM831X_CHG_BATT_COLD_EINT ; 
 int WM831X_CHG_BATT_FAIL_EINT ; 
 int WM831X_CHG_BATT_HOT_EINT ; 
 int WM831X_CHG_END_EINT ; 
 int WM831X_CHG_MODE_EINT ; 
 int WM831X_CHG_OV_EINT ; 
 int WM831X_CHG_START_EINT ; 
 int WM831X_CHG_TO_EINT ; 
 int /*<<< orphan*/  WM831X_INTERRUPT_STATUS_2 ; 
 int /*<<< orphan*/  WM831X_INTERRUPT_STATUS_2_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wm831x*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct wm831x *wm831x)
{
	int reg, mask;

	/* If the charger IRQs are a wake source then make sure we ack
	 * them even if they're not actively being used (eg, no power
	 * driver or no IRQ line wired up) then acknowledge the
	 * interrupts otherwise suspend won't last very long.
	 */
	if (wm831x->charger_irq_wake) {
		reg = FUNC1(wm831x, WM831X_INTERRUPT_STATUS_2_MASK);

		mask = WM831X_CHG_BATT_HOT_EINT |
			WM831X_CHG_BATT_COLD_EINT |
			WM831X_CHG_BATT_FAIL_EINT |
			WM831X_CHG_OV_EINT | WM831X_CHG_END_EINT |
			WM831X_CHG_TO_EINT | WM831X_CHG_MODE_EINT |
			WM831X_CHG_START_EINT;

		/* If any of the interrupts are masked read the statuses */
		if (reg & mask)
			reg = FUNC1(wm831x,
					      WM831X_INTERRUPT_STATUS_2);

		if (reg & mask) {
			FUNC0(wm831x->dev,
				 "Acknowledging masked charger IRQs: %x\n",
				 reg & mask);
			FUNC2(wm831x, WM831X_INTERRUPT_STATUS_2,
					 reg & mask);
		}
	}

	return 0;
}