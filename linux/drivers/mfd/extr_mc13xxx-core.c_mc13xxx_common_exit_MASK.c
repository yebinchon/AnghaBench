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
struct mc13xxx {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mc13xxx* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct device *dev)
{
	struct mc13xxx *mc13xxx = FUNC0(dev);

	FUNC1(dev);
	FUNC3(mc13xxx->irq, mc13xxx->irq_data);
	FUNC2(&mc13xxx->lock);

	return 0;
}