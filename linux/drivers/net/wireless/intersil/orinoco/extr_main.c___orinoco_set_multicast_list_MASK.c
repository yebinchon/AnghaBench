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
struct orinoco_private {int dummy; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int FUNC0 (struct orinoco_private*) ; 
 int FUNC1 (struct orinoco_private*,struct net_device*,int,int) ; 
 struct orinoco_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev)
{
	struct orinoco_private *priv = FUNC2(dev);
	int err = 0;
	int promisc, mc_count;

	/* The Hermes doesn't seem to have an allmulti mode, so we go
	 * into promiscuous mode and let the upper levels deal. */
	if ((dev->flags & IFF_PROMISC) || (dev->flags & IFF_ALLMULTI) ||
	    (FUNC3(dev) > FUNC0(priv))) {
		promisc = 1;
		mc_count = 0;
	} else {
		promisc = 0;
		mc_count = FUNC3(dev);
	}

	err = FUNC1(priv, dev, mc_count, promisc);

	return err;
}