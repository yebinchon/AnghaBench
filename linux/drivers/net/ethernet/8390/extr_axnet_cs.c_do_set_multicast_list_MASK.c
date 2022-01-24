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
struct net_device {long base_addr; int flags; } ;
struct ei_device {int* mcfilter; } ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_PAGE1 ; 
 int E8390_RXCONFIG ; 
 int E8390_START ; 
 scalar_t__ EN0_RXCR ; 
 scalar_t__ FUNC0 (int) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (int*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct ei_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	long e8390_base = dev->base_addr;
	int i;
	struct ei_device *ei_local = FUNC4(dev);

	if (!(dev->flags&(IFF_PROMISC|IFF_ALLMULTI))) {
		FUNC2(ei_local->mcfilter, 0, 8);
		if (!FUNC3(dev))
			FUNC1(ei_local->mcfilter, dev);
	} else {
		/* set to accept-all */
		FUNC2(ei_local->mcfilter, 0xFF, 8);
	}

	FUNC5(E8390_NODMA + E8390_PAGE1, e8390_base + E8390_CMD);
	for(i = 0; i < 8; i++) 
	{
		FUNC5(ei_local->mcfilter[i], e8390_base + FUNC0(i));
	}
	FUNC5(E8390_NODMA + E8390_PAGE0, e8390_base + E8390_CMD);

  	if(dev->flags&IFF_PROMISC)
  		FUNC5(E8390_RXCONFIG | 0x58, e8390_base + EN0_RXCR);
	else if (dev->flags & IFF_ALLMULTI || !FUNC3(dev))
  		FUNC5(E8390_RXCONFIG | 0x48, e8390_base + EN0_RXCR);
  	else
  		FUNC5(E8390_RXCONFIG | 0x40, e8390_base + EN0_RXCR);

	FUNC5(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base+E8390_CMD);
}