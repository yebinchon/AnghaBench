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
struct net_device {int base_addr; int flags; int /*<<< orphan*/  name; } ;
struct el3_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RxBroadcast ; 
 int RxMulticast ; 
 int RxProm ; 
 int RxStation ; 
 int SetRxFilter ; 
 int el3_debug ; 
 int FUNC0 (struct net_device*) ; 
 struct el3_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev)
{
	unsigned long flags;
	struct el3_private *lp = FUNC1(dev);
	int ioaddr = dev->base_addr;
	int mc_count = FUNC0(dev);

	if (el3_debug > 1) {
		static int old;
		if (old != mc_count) {
			old = mc_count;
			FUNC3("%s: Setting Rx mode to %d addresses.\n",
				 dev->name, mc_count);
		}
	}
	FUNC4(&lp->lock, flags);
	if (dev->flags&IFF_PROMISC) {
		FUNC2(SetRxFilter | RxStation | RxMulticast | RxBroadcast | RxProm,
			 ioaddr + EL3_CMD);
	}
	else if (mc_count || (dev->flags&IFF_ALLMULTI)) {
		FUNC2(SetRxFilter | RxStation | RxMulticast | RxBroadcast, ioaddr + EL3_CMD);
	}
	else
		FUNC2(SetRxFilter | RxStation | RxBroadcast, ioaddr + EL3_CMD);
	FUNC5(&lp->lock, flags);
}