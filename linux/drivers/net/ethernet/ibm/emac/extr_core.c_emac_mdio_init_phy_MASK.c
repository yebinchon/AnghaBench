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
struct net_device {int dummy; } ;
struct mii_phy {struct net_device* dev; } ;
struct emac_instance {int /*<<< orphan*/  phy_dev; } ;

/* Variables and functions */
 struct emac_instance* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mii_phy *phy)
{
	struct net_device *ndev = phy->dev;
	struct emac_instance *dev = FUNC0(ndev);

	FUNC2(dev->phy_dev);
	return FUNC1(dev->phy_dev);
}