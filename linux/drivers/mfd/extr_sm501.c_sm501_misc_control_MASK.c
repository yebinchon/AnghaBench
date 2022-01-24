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
struct sm501_devdata {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  dev; scalar_t__ regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SM501_MISC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 struct sm501_devdata* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sm501_devdata*) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct device *dev,
		       unsigned long set, unsigned long clear)
{
	struct sm501_devdata *sm = FUNC1(dev);
	unsigned long misc;
	unsigned long save;
	unsigned long to;

	FUNC5(&sm->reg_lock, save);

	misc = FUNC3(sm->regs + SM501_MISC_CONTROL);
	to = (misc & ~clear) | set;

	if (to != misc) {
		FUNC4(to, sm->regs + SM501_MISC_CONTROL);
		FUNC2(sm);

		FUNC0(sm->dev, "MISC_CONTROL %08lx\n", misc);
	}

	FUNC6(&sm->reg_lock, save);
	return to;
}