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
struct sm501_devdata {int /*<<< orphan*/  reg_lock; scalar_t__ regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sm501_devdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sm501_devdata*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC6(struct device *dev,
			       unsigned long reg,
			       unsigned long set,
			       unsigned long clear)
{
	struct sm501_devdata *sm = FUNC0(dev);
	unsigned long data;
	unsigned long save;

	FUNC4(&sm->reg_lock, save);

	data = FUNC2(sm->regs + reg);
	data |= set;
	data &= ~clear;

	FUNC3(data, sm->regs + reg);
	FUNC1(sm);

	FUNC5(&sm->reg_lock, save);

	return data;
}