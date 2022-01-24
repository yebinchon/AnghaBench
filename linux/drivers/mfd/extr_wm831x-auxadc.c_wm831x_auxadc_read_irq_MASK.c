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
struct wm831x_auxadc_req {int input; int val; int /*<<< orphan*/  list; int /*<<< orphan*/  done; } ;
struct wm831x {int auxadc_active; int /*<<< orphan*/  auxadc_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  auxadc_pending; } ;
typedef  enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WM831X_AUXADC_CONTROL ; 
 int /*<<< orphan*/  WM831X_AUXADC_SOURCE ; 
 int WM831X_AUX_CVT_ENA ; 
 int WM831X_AUX_ENA ; 
 int WM831X_AUX_RATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wm831x_auxadc_req*) ; 
 struct wm831x_auxadc_req* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wm831x*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC11(struct wm831x *wm831x,
				  enum wm831x_auxadc input)
{
	struct wm831x_auxadc_req *req;
	int ret;
	bool ena = false;

	req = FUNC3(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	FUNC1(&req->done);
	req->input = input;
	req->val = -ETIMEDOUT;

	FUNC7(&wm831x->auxadc_lock);

	/* Enqueue the request */
	FUNC4(&req->list, &wm831x->auxadc_pending);

	ena = !wm831x->auxadc_active;

	if (ena) {
		ret = FUNC10(wm831x, WM831X_AUXADC_CONTROL,
				      WM831X_AUX_ENA, WM831X_AUX_ENA);
		if (ret != 0) {
			FUNC0(wm831x->dev, "Failed to enable AUXADC: %d\n",
				ret);
			goto out;
		}
	}

	/* Enable the conversion if not already running */
	if (!(wm831x->auxadc_active & (1 << input))) {
		ret = FUNC10(wm831x, WM831X_AUXADC_SOURCE,
				      1 << input, 1 << input);
		if (ret != 0) {
			FUNC0(wm831x->dev,
				"Failed to set AUXADC source: %d\n", ret);
			goto out;
		}

		wm831x->auxadc_active |= 1 << input;
	}

	/* We convert at the fastest rate possible */
	if (ena) {
		ret = FUNC10(wm831x, WM831X_AUXADC_CONTROL,
				      WM831X_AUX_CVT_ENA |
				      WM831X_AUX_RATE_MASK,
				      WM831X_AUX_CVT_ENA |
				      WM831X_AUX_RATE_MASK);
		if (ret != 0) {
			FUNC0(wm831x->dev, "Failed to start AUXADC: %d\n",
				ret);
			goto out;
		}
	}

	FUNC8(&wm831x->auxadc_lock);

	/* Wait for an interrupt */
	FUNC9(&req->done, FUNC6(500));

	FUNC7(&wm831x->auxadc_lock);

	FUNC5(&req->list);
	ret = req->val;

out:
	FUNC8(&wm831x->auxadc_lock);

	FUNC2(req);

	return ret;
}