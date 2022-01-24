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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int RxReset ; 
 int SetStatusEnb ; 
 int TxReset ; 
 int el3_debug ; 
 int /*<<< orphan*/  el3_interrupt ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	int i;

	FUNC3(TxReset, ioaddr + EL3_CMD);
	FUNC3(RxReset, ioaddr + EL3_CMD);
	FUNC3(SetStatusEnb | 0x00, ioaddr + EL3_CMD);

	i = FUNC5(dev->irq, el3_interrupt, 0, dev->name, dev);
	if (i)
		return i;

	FUNC0(0);
	if (el3_debug > 3)
		FUNC4("%s: Opening, IRQ %d	 status@%x %4.4x.\n", dev->name,
			   dev->irq, ioaddr + EL3_STATUS, FUNC2(ioaddr + EL3_STATUS));

	FUNC1(dev);

	if (el3_debug > 3)
		FUNC4("%s: Opened 3c509  IRQ %d  status %4.4x.\n",
			   dev->name, dev->irq, FUNC2(ioaddr + EL3_STATUS));

	return 0;
}