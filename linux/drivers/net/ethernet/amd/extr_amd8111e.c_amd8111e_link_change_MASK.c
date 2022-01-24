#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ duplex; scalar_t__ speed; int /*<<< orphan*/  autoneg; } ;
struct amd8111e_priv {TYPE_1__ link_config; scalar_t__ mmio; } ;

/* Variables and functions */
 int AUTONEG_COMPLETE ; 
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  AUTONEG_INVALID ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 scalar_t__ DUPLEX_INVALID ; 
 int FULL_DPLX ; 
 int LINK_STATS ; 
 int PHY_SPEED_10 ; 
 int PHY_SPEED_100 ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_INVALID ; 
 int SPEED_MASK ; 
 scalar_t__ STAT0 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 struct amd8111e_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct amd8111e_priv *lp = FUNC1(dev);
	int status0,speed;

	/* read the link change */
     	status0 = FUNC4(lp->mmio + STAT0);

	if(status0 & LINK_STATS){
		if(status0 & AUTONEG_COMPLETE)
			lp->link_config.autoneg = AUTONEG_ENABLE;
		else
			lp->link_config.autoneg = AUTONEG_DISABLE;

		if(status0 & FULL_DPLX)
			lp->link_config.duplex = DUPLEX_FULL;
		else
			lp->link_config.duplex = DUPLEX_HALF;
		speed = (status0 & SPEED_MASK) >> 7;
		if(speed == PHY_SPEED_10)
			lp->link_config.speed = SPEED_10;
		else if(speed == PHY_SPEED_100)
			lp->link_config.speed = SPEED_100;

		FUNC0(dev, "Link is Up. Speed is %s Mbps %s Duplex\n",
			    (lp->link_config.speed == SPEED_100) ?
							"100" : "10",
			    (lp->link_config.duplex == DUPLEX_FULL) ?
							"Full" : "Half");

		FUNC3(dev);
	}
	else{
		lp->link_config.speed = SPEED_INVALID;
		lp->link_config.duplex = DUPLEX_INVALID;
		lp->link_config.autoneg = AUTONEG_INVALID;
		FUNC0(dev, "Link is Down.\n");
		FUNC2(dev);
	}

	return 0;
}