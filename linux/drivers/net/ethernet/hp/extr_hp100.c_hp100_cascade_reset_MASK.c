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
typedef  scalar_t__ u_short ;
struct net_device {int base_addr; int /*<<< orphan*/  name; } ;
struct hp100_private {scalar_t__ chip; } ;

/* Variables and functions */
 scalar_t__ HP100_CHIPID_LASSEN ; 
 int HP100_HW_RST ; 
 int /*<<< orphan*/  HP100_PCI_RESET ; 
 int HP100_RESET_LB ; 
 int HP100_SET_LB ; 
 int /*<<< orphan*/  HW_MAP ; 
 int /*<<< orphan*/  OPTION_LSW ; 
 int /*<<< orphan*/  PCICTRL2 ; 
 int /*<<< orphan*/  PERFORMANCE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct hp100_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, u_short enable)
{
	int ioaddr = dev->base_addr;
	struct hp100_private *lp = FUNC4(dev);

#ifdef HP100_DEBUG_B
	hp100_outw(0x4226, TRACE);
	printk("hp100: %s: cascade_reset\n", dev->name);
#endif

	if (enable) {
		FUNC2(HP100_HW_RST | HP100_RESET_LB, OPTION_LSW);
		if (lp->chip == HP100_CHIPID_LASSEN) {
			/* Lassen requires a PCI transmit fifo reset */
			FUNC3(HW_MAP);
			FUNC0(~HP100_PCI_RESET, PCICTRL2);
			FUNC1(HP100_PCI_RESET, PCICTRL2);
			/* Wait for min. 300 ns */
			/* we can't use jiffies here, because it may be */
			/* that we have disabled the timer... */
			FUNC6(400);
			FUNC0(~HP100_PCI_RESET, PCICTRL2);
			FUNC3(PERFORMANCE);
		}
	} else {		/* bring out of reset */
		FUNC2(HP100_HW_RST | HP100_SET_LB, OPTION_LSW);
		FUNC6(400);
		FUNC3(PERFORMANCE);
	}
}