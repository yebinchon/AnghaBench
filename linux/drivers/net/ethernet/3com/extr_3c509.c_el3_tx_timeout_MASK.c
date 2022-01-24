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
struct net_device {int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 scalar_t__ TX_FREE ; 
 scalar_t__ TX_STATUS ; 
 int /*<<< orphan*/  TxEnable ; 
 int /*<<< orphan*/  TxReset ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (struct net_device *dev)
{
	int ioaddr = dev->base_addr;

	/* Transmitter timeout, serious problems. */
	FUNC5("%s: transmit timed out, Tx_status %2.2x status %4.4x Tx FIFO room %d\n",
		dev->name, FUNC0(ioaddr + TX_STATUS), FUNC1(ioaddr + EL3_STATUS),
		FUNC1(ioaddr + TX_FREE));
	dev->stats.tx_errors++;
	FUNC2(dev); /* prevent tx timeout */
	/* Issue TX_RESET and TX_START commands. */
	FUNC4(TxReset, ioaddr + EL3_CMD);
	FUNC4(TxEnable, ioaddr + EL3_CMD);
	FUNC3(dev);
}