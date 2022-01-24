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
struct wm831x {int /*<<< orphan*/ * auxadc_read; int /*<<< orphan*/  dev; scalar_t__ irq; int /*<<< orphan*/  auxadc_pending; int /*<<< orphan*/  auxadc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  WM831X_IRQ_AUXADC_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wm831x*) ; 
 int /*<<< orphan*/  wm831x_auxadc_irq ; 
 int /*<<< orphan*/ * wm831x_auxadc_read_irq ; 
 int /*<<< orphan*/ * wm831x_auxadc_read_polled ; 
 int /*<<< orphan*/  FUNC4 (struct wm831x*,int /*<<< orphan*/ ) ; 

void FUNC5(struct wm831x *wm831x)
{
	int ret;

	FUNC2(&wm831x->auxadc_lock);
	FUNC0(&wm831x->auxadc_pending);

	if (wm831x->irq) {
		wm831x->auxadc_read = wm831x_auxadc_read_irq;

		ret = FUNC3(FUNC4(wm831x,
						      WM831X_IRQ_AUXADC_DATA),
					   NULL, wm831x_auxadc_irq,
					   IRQF_ONESHOT,
					   "auxadc", wm831x);
		if (ret < 0) {
			FUNC1(wm831x->dev, "AUXADC IRQ request failed: %d\n",
				ret);
			wm831x->auxadc_read = NULL;
		}
	}

	if (!wm831x->auxadc_read)
		wm831x->auxadc_read = wm831x_auxadc_read_polled;
}