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
struct net_device {unsigned long base_addr; int flags; } ;
struct ei_device {int* mcfilter; } ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_PAGE1 ; 
 int E8390_RXCONFIG ; 
 scalar_t__ EN0_RXCR ; 
 scalar_t__ FUNC0 (int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct ei_device* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	unsigned long e8390_base = dev->base_addr;
	int i;
	struct ei_device *ei_local = FUNC7(dev);

	if (!(dev->flags&(IFF_PROMISC|IFF_ALLMULTI))) {
		FUNC4(ei_local->mcfilter, 0, 8);
		if (!FUNC6(dev))
			FUNC3(ei_local->mcfilter, dev);
	} else
		FUNC4(ei_local->mcfilter, 0xFF, 8);	/* mcast set to accept-all */

	/*
	 * DP8390 manuals don't specify any magic sequence for altering
	 * the multicast regs on an already running card. To be safe, we
	 * ensure multicast mode is off prior to loading up the new hash
	 * table. If this proves to be not enough, we can always resort
	 * to stopping the NIC, loading the table and then restarting.
	 *
	 * Bug Alert!  The MC regs on the SMC 83C690 (SMC Elite and SMC
	 * Elite16) appear to be write-only. The NS 8390 data sheet lists
	 * them as r/w so this is a bug.  The SMC 83C790 (SMC Ultra and
	 * Ultra32 EISA) appears to have this bug fixed.
	 */

	if (FUNC8(dev))
		FUNC2(E8390_RXCONFIG, e8390_base + EN0_RXCR);
	FUNC2(E8390_NODMA + E8390_PAGE1, e8390_base + E8390_CMD);
	for (i = 0; i < 8; i++) {
		FUNC2(ei_local->mcfilter[i], e8390_base + FUNC0(i));
#ifndef BUG_83C690
		if (FUNC1(e8390_base + FUNC0(i)) != ei_local->mcfilter[i])
			FUNC5(dev, "Multicast filter read/write mismap %d\n",
				   i);
#endif
	}
	FUNC2(E8390_NODMA + E8390_PAGE0, e8390_base + E8390_CMD);

	if (dev->flags&IFF_PROMISC)
		FUNC2(E8390_RXCONFIG | 0x18, e8390_base + EN0_RXCR);
	else if (dev->flags & IFF_ALLMULTI || !FUNC6(dev))
		FUNC2(E8390_RXCONFIG | 0x08, e8390_base + EN0_RXCR);
	else
		FUNC2(E8390_RXCONFIG, e8390_base + EN0_RXCR);
}