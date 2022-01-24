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
	dev->mtu = new_mtu;

	if (!FUNC0(dev))
		return 0;

	/* Recevice ring buffer size is needed to be set based on MTU. If MTU is
	 * changed then reinitilisation of the receive ring buffers need to be
	 * done. Hence bring interface down and bring interface back up
	 */
	FUNC2(dev);
	return FUNC1(dev);
}