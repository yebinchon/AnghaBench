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
struct wm831x {int /*<<< orphan*/  auxadc_lock; int /*<<< orphan*/  dev; } ;
typedef  enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  WM831X_AUXADC_CONTROL ; 
 int /*<<< orphan*/  WM831X_AUXADC_DATA ; 
 int WM831X_AUXADC_DATA_EINT ; 
 int /*<<< orphan*/  WM831X_AUXADC_SOURCE ; 
 int WM831X_AUX_CAL ; 
 int /*<<< orphan*/  WM831X_AUX_CVT_ENA ; 
 int WM831X_AUX_DATA_MASK ; 
 int WM831X_AUX_DATA_SRC_MASK ; 
 int WM831X_AUX_DATA_SRC_SHIFT ; 
 int /*<<< orphan*/  WM831X_AUX_ENA ; 
 int /*<<< orphan*/  WM831X_INTERRUPT_STATUS_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wm831x*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct wm831x *wm831x,
				     enum wm831x_auxadc input)
{
	int ret, src, timeout;

	FUNC2(&wm831x->auxadc_lock);

	ret = FUNC6(wm831x, WM831X_AUXADC_CONTROL,
			      WM831X_AUX_ENA, WM831X_AUX_ENA);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to enable AUXADC: %d\n", ret);
		goto out;
	}

	/* We force a single source at present */
	src = input;
	ret = FUNC5(wm831x, WM831X_AUXADC_SOURCE,
			       1 << src);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to set AUXADC source: %d\n", ret);
		goto out;
	}

	ret = FUNC6(wm831x, WM831X_AUXADC_CONTROL,
			      WM831X_AUX_CVT_ENA, WM831X_AUX_CVT_ENA);
	if (ret < 0) {
		FUNC0(wm831x->dev, "Failed to start AUXADC: %d\n", ret);
		goto disable;
	}

	/* If we're not using interrupts then poll the
	 * interrupt status register */
	timeout = 5;
	while (timeout) {
		FUNC1(1);

		ret = FUNC4(wm831x,
				      WM831X_INTERRUPT_STATUS_1);
		if (ret < 0) {
			FUNC0(wm831x->dev,
				"ISR 1 read failed: %d\n", ret);
			goto disable;
		}

		/* Did it complete? */
		if (ret & WM831X_AUXADC_DATA_EINT) {
			FUNC5(wm831x,
					 WM831X_INTERRUPT_STATUS_1,
					 WM831X_AUXADC_DATA_EINT);
			break;
		} else {
			FUNC0(wm831x->dev,
				"AUXADC conversion timeout\n");
			ret = -EBUSY;
			goto disable;
		}
	}

	ret = FUNC4(wm831x, WM831X_AUXADC_DATA);
	if (ret < 0) {
		FUNC0(wm831x->dev,
			"Failed to read AUXADC data: %d\n", ret);
		goto disable;
	}

	src = ((ret & WM831X_AUX_DATA_SRC_MASK)
	       >> WM831X_AUX_DATA_SRC_SHIFT) - 1;

	if (src == 14)
		src = WM831X_AUX_CAL;

	if (src != input) {
		FUNC0(wm831x->dev, "Data from source %d not %d\n",
			src, input);
		ret = -EINVAL;
	} else {
		ret &= WM831X_AUX_DATA_MASK;
	}

disable:
	FUNC6(wm831x, WM831X_AUXADC_CONTROL, WM831X_AUX_ENA, 0);
out:
	FUNC3(&wm831x->auxadc_lock);
	return ret;
}