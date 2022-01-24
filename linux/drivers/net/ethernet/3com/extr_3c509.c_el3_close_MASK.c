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
struct net_device {int base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct el3_private {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EL3_EISA ; 
 scalar_t__ WN0_IRQ ; 
 int el3_debug ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct el3_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	struct el3_private *lp = FUNC3(dev);

	if (el3_debug > 2)
		FUNC5("%s: Shutting down ethercard.\n", dev->name);

	FUNC1(dev);

	FUNC2(dev->irq, dev);
	/* Switching back to window 0 disables the IRQ. */
	FUNC0(0);
	if (lp->type != EL3_EISA) {
		/* But we explicitly zero the IRQ line select anyway. Don't do
		 * it on EISA cards, it prevents the module from getting an
		 * IRQ after unload+reload... */
		FUNC4(0x0f00, ioaddr + WN0_IRQ);
	}

	return 0;
}