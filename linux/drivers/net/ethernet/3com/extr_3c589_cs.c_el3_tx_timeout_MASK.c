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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 int /*<<< orphan*/  TxEnable ; 
 int /*<<< orphan*/  TxReset ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;

	FUNC1(dev, "Transmit timed out!\n");
	FUNC0(dev);
	dev->stats.tx_errors++;
	FUNC2(dev); /* prevent tx timeout */
	/* Issue TX_RESET and TX_START commands. */
	FUNC5(dev, TxReset);
	FUNC4(TxEnable, ioaddr + EL3_CMD);
	FUNC3(dev);
}