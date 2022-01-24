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
struct pcmcia_device {int /*<<< orphan*/  open; int /*<<< orphan*/  dev; } ;
struct net_device {unsigned int base_addr; int /*<<< orphan*/  name; } ;
struct el3_private {int /*<<< orphan*/  media; int /*<<< orphan*/  window_lock; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EL3_CMD ; 
 int RxDisable ; 
 int SetIntrEnb ; 
 int StatsDisable ; 
 int TxDisable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct el3_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 scalar_t__ FUNC6 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;
	struct el3_private *lp = FUNC3(dev);
	struct pcmcia_device *link = lp->p_dev;

	FUNC2(&link->dev, "%s: shutting down ethercard.\n", dev->name);
	
	if (FUNC6(link)) {
		unsigned long flags;

		/* Turn off statistics ASAP.  We update lp->stats below. */
		FUNC5(StatsDisable, ioaddr + EL3_CMD);
		
		/* Disable the receiver and transmitter. */
		FUNC5(RxDisable, ioaddr + EL3_CMD);
		FUNC5(TxDisable, ioaddr + EL3_CMD);
		
		/* Note: Switching to window 0 may disable the IRQ. */
		FUNC0(0);
		FUNC7(&lp->window_lock, flags);
		FUNC9(dev);
		FUNC8(&lp->window_lock, flags);

		/* force interrupts off */
		FUNC5(SetIntrEnb | 0x0000, ioaddr + EL3_CMD);
	}

	link->open--;
	FUNC4(dev);
	FUNC1(&lp->media);

	return 0;
}