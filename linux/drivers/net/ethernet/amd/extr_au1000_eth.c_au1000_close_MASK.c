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
struct net_device {int /*<<< orphan*/  irq; scalar_t__ phydev; } ;
struct au1000_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct au1000_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1000_private* const,int /*<<< orphan*/ ,struct net_device*,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	unsigned long flags;
	struct au1000_private *const aup = FUNC2(dev);

	FUNC3(aup, drv, dev, "close: dev=%p\n", dev);

	if (dev->phydev)
		FUNC5(dev->phydev);

	FUNC6(&aup->lock, flags);

	FUNC0(dev);

	/* stop the device */
	FUNC4(dev);

	/* disable the interrupt */
	FUNC1(dev->irq, dev);
	FUNC7(&aup->lock, flags);

	return 0;
}