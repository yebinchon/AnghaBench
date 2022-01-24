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
struct net_device {int base_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct hp100_private {scalar_t__ lan_type; int /*<<< orphan*/  hub_status; } ;

/* Variables and functions */
 scalar_t__ HP100_LAN_100 ; 
 int /*<<< orphan*/  IRQ_MASK ; 
 int /*<<< orphan*/  OPTION_LSW ; 
 int /*<<< orphan*/  PERFORMANCE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct hp100_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	struct hp100_private *lp = FUNC6(dev);

#ifdef HP100_DEBUG_B
	hp100_outw(0x4205, TRACE);
	printk("hp100: %s: close\n", dev->name);
#endif

	FUNC4(PERFORMANCE);
	FUNC3(0xfefe, IRQ_MASK);	/* mask off all IRQs */

	FUNC5(dev);

	if (lp->lan_type == HP100_LAN_100)
		lp->hub_status = FUNC2(dev, 0);

	FUNC7(dev);

	FUNC0(dev->irq, dev);

#ifdef HP100_DEBUG
	printk("hp100: %s: close LSW = 0x%x\n", dev->name,
	       hp100_inw(OPTION_LSW));
#endif

	return 0;
}