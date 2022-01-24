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
struct net_device {int dummy; } ;
struct lance_private {int /*<<< orphan*/  devlock; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  lance_interrupt ; 
 int FUNC0 (struct net_device*) ; 
 struct lance_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct net_device *dev)
{
	struct lance_private *lp = FUNC1(dev);
	int res;

	/* Install the Interrupt handler. Or we could shunt this out to specific drivers? */
	if (FUNC3(lp->irq, lance_interrupt, IRQF_SHARED, lp->name, dev))
		return -EAGAIN;

	res = FUNC0(dev);
	FUNC4(&lp->devlock);
	FUNC2(dev);

	return res;
}