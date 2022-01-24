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
struct net_device {scalar_t__ phydev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct au1000_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  au1000_interrupt ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct au1000_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct au1000_private*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	int retval;
	struct au1000_private *aup = FUNC3(dev);

	FUNC4(aup, drv, dev, "open: dev=%p\n", dev);

	retval = FUNC7(dev->irq, au1000_interrupt, 0,
					dev->name, dev);
	if (retval) {
		FUNC2(dev, "unable to get IRQ %d\n", dev->irq);
		return retval;
	}

	retval = FUNC0(dev);
	if (retval) {
		FUNC2(dev, "error in au1000_init\n");
		FUNC1(dev->irq, dev);
		return retval;
	}

	if (dev->phydev)
		FUNC6(dev->phydev);

	FUNC5(dev);

	FUNC4(aup, drv, dev, "open: Initialization done.\n");

	return 0;
}