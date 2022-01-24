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
struct wm831x {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct wm831x*,unsigned short) ; 

int FUNC4(struct wm831x *wm831x, unsigned short reg,
		    unsigned short mask, unsigned short val)
{
	int ret;

	FUNC0(&wm831x->io_lock);

	if (!FUNC3(wm831x, reg))
		ret = FUNC2(wm831x->regmap, reg, mask, val);
	else
		ret = -EPERM;

	FUNC1(&wm831x->io_lock);

	return ret;
}