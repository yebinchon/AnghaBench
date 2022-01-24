#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rhine_private {int quirks; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rhine_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (long,struct net_device*) ; 
 int rqRhineI ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, long pioaddr)
{
	struct rhine_private *rp = FUNC2(dev);

	/* Reset the chip to erase previous misconfiguration. */
	FUNC3(dev);

	/* Rhine-I needs extra time to recuperate before EEPROM reload */
	if (rp->quirks & rqRhineI)
		FUNC1(5);

	/* Reload EEPROM controlled bytes cleared by soft reset */
	if (FUNC0(dev->dev.parent))
		FUNC4(pioaddr, dev);
}