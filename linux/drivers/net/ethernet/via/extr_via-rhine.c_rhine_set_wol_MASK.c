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
typedef  int u32 ;
struct rhine_private {int quirks; int wolopts; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EINVAL ; 
 int WAKE_BCAST ; 
 int WAKE_MAGIC ; 
 int WAKE_MCAST ; 
 int WAKE_PHY ; 
 int WAKE_UCAST ; 
 struct rhine_private* FUNC0 (struct net_device*) ; 
 int rqWOL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct rhine_private *rp = FUNC0(dev);
	u32 support = WAKE_PHY | WAKE_MAGIC |
		      WAKE_UCAST | WAKE_MCAST | WAKE_BCAST;	/* Untested */

	if (!(rp->quirks & rqWOL))
		return -EINVAL;

	if (wol->wolopts & ~support)
		return -EINVAL;

	FUNC1(&rp->lock);
	rp->wolopts = wol->wolopts;
	FUNC2(&rp->lock);

	return 0;
}