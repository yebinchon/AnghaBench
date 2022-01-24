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
struct wm831x {scalar_t__* gpio_update; scalar_t__* irq_masks_cur; scalar_t__* irq_masks_cache; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  dev; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ WM831X_GPIO1_CONTROL ; 
 int WM831X_GPN_INT_MODE ; 
 int WM831X_GPN_POL ; 
 scalar_t__ WM831X_INTERRUPT_STATUS_1_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 struct wm831x* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wm831x*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wm831x*,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct wm831x *wm831x = FUNC2(data);
	int i;

	for (i = 0; i < FUNC0(wm831x->gpio_update); i++) {
		if (wm831x->gpio_update[i]) {
			FUNC5(wm831x, WM831X_GPIO1_CONTROL + i,
					WM831X_GPN_INT_MODE | WM831X_GPN_POL,
					wm831x->gpio_update[i]);
			wm831x->gpio_update[i] = 0;
		}
	}

	for (i = 0; i < FUNC0(wm831x->irq_masks_cur); i++) {
		/* If there's been a change in the mask write it back
		 * to the hardware. */
		if (wm831x->irq_masks_cur[i] != wm831x->irq_masks_cache[i]) {
			FUNC1(wm831x->dev, "IRQ mask sync: %x = %x\n",
				WM831X_INTERRUPT_STATUS_1_MASK + i,
				wm831x->irq_masks_cur[i]);

			wm831x->irq_masks_cache[i] = wm831x->irq_masks_cur[i];
			FUNC4(wm831x,
					 WM831X_INTERRUPT_STATUS_1_MASK + i,
					 wm831x->irq_masks_cur[i]);
		}
	}

	FUNC3(&wm831x->irq_lock);
}