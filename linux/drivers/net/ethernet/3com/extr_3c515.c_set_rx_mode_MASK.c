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

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 unsigned short RxBroadcast ; 
 unsigned short RxMulticast ; 
 unsigned short RxProm ; 
 unsigned short RxStation ; 
 unsigned short SetRxFilter ; 
 int corkscrew_debug ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	unsigned short new_mode;

	if (dev->flags & IFF_PROMISC) {
		if (corkscrew_debug > 3)
			FUNC2("%s: Setting promiscuous mode.\n",
			       dev->name);
		new_mode = SetRxFilter | RxStation | RxMulticast | RxBroadcast | RxProm;
	} else if (!FUNC0(dev) || dev->flags & IFF_ALLMULTI) {
		new_mode = SetRxFilter | RxStation | RxMulticast | RxBroadcast;
	} else
		new_mode = SetRxFilter | RxStation | RxBroadcast;

	FUNC1(new_mode, ioaddr + EL3_CMD);
}