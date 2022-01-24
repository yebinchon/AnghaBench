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
struct wm831x {int /*<<< orphan*/  io_lock; scalar_t__ locked; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WM831X_SECURITY_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wm831x*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct wm831x *wm831x)
{
	int ret;

	/* 0x9716 is the value required to unlock the registers */
	ret = FUNC4(wm831x, WM831X_SECURITY_KEY, 0x9716);
	if (ret == 0) {
		FUNC1(wm831x->dev, "Registers unlocked\n");

		FUNC2(&wm831x->io_lock);
		FUNC0(!wm831x->locked);
		wm831x->locked = 0;
		FUNC3(&wm831x->io_lock);
	}

	return ret;
}