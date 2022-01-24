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
struct net_device {int mem_start; int if_port; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct el3_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL3_IO_EXTENT ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 scalar_t__ el3_debug ; 
 int /*<<< orphan*/  ethtool_ops ; 
 int /*<<< orphan*/  netdev_ops ; 
 struct el3_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct el3_private *lp = FUNC0(dev);
	int err;
	const char *if_names[] = {"10baseT", "AUI", "undefined", "BNC"};

	FUNC5(&lp->lock);

	if (dev->mem_start & 0x05) { /* xcvr codes 1/3/4/12 */
		dev->if_port = (dev->mem_start & 0x0f);
	} else { /* xcvr codes 0/8 */
		/* use eeprom value, but save user's full-duplex selection */
		dev->if_port |= (dev->mem_start & 0x08);
	}

	/* The EL3-specific entries in the device structure. */
	dev->netdev_ops = &netdev_ops;
	dev->watchdog_timeo = TX_TIMEOUT;
	dev->ethtool_ops = &ethtool_ops;

	err = FUNC3(dev);
	if (err) {
		FUNC1("Failed to register 3c5x9 at %#3.3lx, IRQ %d.\n",
			dev->base_addr, dev->irq);
		FUNC4(dev->base_addr, EL3_IO_EXTENT);
		return err;
	}

	FUNC2("%s: 3c5x9 found at %#3.3lx, %s port, address %pM, IRQ %d.\n",
	       dev->name, dev->base_addr, if_names[(dev->if_port & 0x03)],
	       dev->dev_addr, dev->irq);

	if (el3_debug > 0)
		FUNC2("%s", version);
	return 0;

}