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
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	/* Stop everything, get ready to change the MTU */
	if (!FUNC0(dev))
		return 0;

	/* Bring interface down, change mtu and bring interface back up */
	FUNC2(dev);
	dev->mtu = new_mtu;
	return FUNC1(dev);
}