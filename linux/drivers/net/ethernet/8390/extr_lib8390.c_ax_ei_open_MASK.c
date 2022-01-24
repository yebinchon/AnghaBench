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
struct net_device {scalar_t__ watchdog_timeo; } ;
struct ei_device {scalar_t__ irqlock; int /*<<< orphan*/  page_lock; } ;

/* Variables and functions */
 scalar_t__ TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 struct ei_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	unsigned long flags;
	struct ei_device *ei_local = FUNC1(dev);

	if (dev->watchdog_timeo <= 0)
		dev->watchdog_timeo = TX_TIMEOUT;

	/*
	 *	Grab the page lock so we own the register set, then call
	 *	the init function.
	 */

	FUNC3(&ei_local->page_lock, flags);
	FUNC0(dev, 1);
	/* Set the flag before we drop the lock, That way the IRQ arrives
	   after its set and we get no silly warnings */
	FUNC2(dev);
	FUNC4(&ei_local->page_lock, flags);
	ei_local->irqlock = 0;
	return 0;
}