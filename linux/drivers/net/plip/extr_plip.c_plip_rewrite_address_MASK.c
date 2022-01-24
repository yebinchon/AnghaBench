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
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_address; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;
struct ethhdr {scalar_t__ h_dest; scalar_t__ h_source; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct in_device* FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 struct in_ifaddr* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(const struct net_device *dev, struct ethhdr *eth)
{
	const struct in_device *in_dev;

	FUNC4();
	in_dev = FUNC0(dev);
	if (in_dev) {
		/* Any address will do - we take the first */
		const struct in_ifaddr *ifa = FUNC3(in_dev->ifa_list);
		if (ifa) {
			FUNC1(eth->h_source, dev->dev_addr, ETH_ALEN);
			FUNC2(eth->h_dest, 0xfc, 2);
			FUNC1(eth->h_dest+2, &ifa->ifa_address, 4);
		}
	}
	FUNC5();
}