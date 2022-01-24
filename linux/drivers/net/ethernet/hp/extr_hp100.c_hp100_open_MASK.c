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
struct hp100_private {scalar_t__ bus; int /*<<< orphan*/  hash_bytes; int /*<<< orphan*/  mac2_mode; int /*<<< orphan*/  mac1_mode; int /*<<< orphan*/  lan_type; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ HP100_BUS_EISA ; 
 scalar_t__ HP100_BUS_PCI ; 
 int /*<<< orphan*/  HP100_MAC1MODE3 ; 
 int /*<<< orphan*/  HP100_MAC2MODE3 ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  hp100_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 struct hp100_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct hp100_private *lp = FUNC6(dev);
#ifdef HP100_DEBUG_B
	int ioaddr = dev->base_addr;
#endif

#ifdef HP100_DEBUG_B
	hp100_outw(0x4204, TRACE);
	printk("hp100: %s: open\n", dev->name);
#endif

	/* New: if bus is PCI or EISA, interrupts might be shared interrupts */
	if (FUNC10(dev->irq, hp100_interrupt,
			lp->bus == HP100_BUS_PCI || lp->bus ==
			HP100_BUS_EISA ? IRQF_SHARED : 0,
			dev->name, dev)) {
		FUNC9("hp100: %s: unable to get IRQ %d\n", dev->name, dev->irq);
		return -EAGAIN;
	}

	FUNC8(dev); /* prevent tx timeout */
	FUNC7(dev);

	lp->lan_type = FUNC2(dev);
	lp->mac1_mode = HP100_MAC1MODE3;
	lp->mac2_mode = HP100_MAC2MODE3;
	FUNC5(&lp->hash_bytes, 0x00, 8);

	FUNC4(dev);

	FUNC0(dev);

	FUNC3(dev);	/* sets mac modes, enables interrupts */

	return 0;
}