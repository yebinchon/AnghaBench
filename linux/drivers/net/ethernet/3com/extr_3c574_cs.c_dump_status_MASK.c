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
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EL3_STATUS ; 
 unsigned int RxStatus ; 
 unsigned int TxFree ; 
 scalar_t__ TxStatus ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;
	FUNC0(1);
	FUNC3(dev, "  irq status %04x, rx status %04x, tx status %02x, tx free %04x\n",
		    FUNC2(ioaddr+EL3_STATUS),
		    FUNC2(ioaddr+RxStatus), FUNC1(ioaddr+TxStatus),
		    FUNC2(ioaddr+TxFree));
	FUNC0(4);
	FUNC3(dev, "  diagnostics: fifo %04x net %04x ethernet %04x media %04x\n",
		    FUNC2(ioaddr+0x04), FUNC2(ioaddr+0x06),
		    FUNC2(ioaddr+0x08), FUNC2(ioaddr+0x0a));
	FUNC0(1);
}