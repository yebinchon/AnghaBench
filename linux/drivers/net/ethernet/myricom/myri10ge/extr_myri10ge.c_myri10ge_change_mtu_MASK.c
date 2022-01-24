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
struct myri10ge_priv {scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int,int) ; 
 struct myri10ge_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int new_mtu)
{
	struct myri10ge_priv *mgp = FUNC3(dev);

	FUNC2(dev, "changing mtu from %d to %d\n", dev->mtu, new_mtu);
	if (mgp->running) {
		/* if we change the mtu on an active device, we must
		 * reset the device so the firmware sees the change */
		FUNC0(dev);
		dev->mtu = new_mtu;
		FUNC1(dev);
	} else
		dev->mtu = new_mtu;

	return 0;
}