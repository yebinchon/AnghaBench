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
struct net_device {int /*<<< orphan*/  name; } ;
struct hp100_private {scalar_t__ lan_type; int /*<<< orphan*/  hub_status; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HP100_LAN_100 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct hp100_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct hp100_private *lp = FUNC4(dev);

	if (lp->lan_type < 0) {	/* no LAN type detected yet? */
		FUNC3(dev);
		if ((lp->lan_type = FUNC1(dev)) < 0) {
			FUNC5("hp100: %s: no connection found - check wire\n", dev->name);
			FUNC2(dev);	/* 10Mb/s RX packets maybe handled */
			return -EIO;
		}
		if (lp->lan_type == HP100_LAN_100)
			lp->hub_status = FUNC0(dev, 0);	/* relogin */
		FUNC2(dev);
	}
	return 0;
}