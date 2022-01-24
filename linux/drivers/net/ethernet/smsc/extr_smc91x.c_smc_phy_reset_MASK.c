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
struct smc_local {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct smc_local* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int phy)
{
	struct smc_local *lp = FUNC1(dev);
	unsigned int bmcr;
	int timeout;

	FUNC3(dev, phy, MII_BMCR, BMCR_RESET);

	for (timeout = 2; timeout; timeout--) {
		FUNC5(&lp->lock);
		FUNC0(50);
		FUNC4(&lp->lock);

		bmcr = FUNC2(dev, phy, MII_BMCR);
		if (!(bmcr & BMCR_RESET))
			break;
	}

	return bmcr & BMCR_RESET;
}