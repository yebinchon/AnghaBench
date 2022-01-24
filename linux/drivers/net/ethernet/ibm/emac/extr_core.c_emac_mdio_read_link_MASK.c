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
struct phy_device {int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct net_device {int dummy; } ;
struct mii_phy {int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; struct net_device* dev; } ;
struct emac_instance {struct phy_device* phy_dev; } ;

/* Variables and functions */
 struct emac_instance* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*) ; 

__attribute__((used)) static int FUNC2(struct mii_phy *phy)
{
	struct net_device *ndev = phy->dev;
	struct emac_instance *dev = FUNC0(ndev);
	struct phy_device *phy_dev = dev->phy_dev;
	int res;

	res = FUNC1(phy_dev);
	if (res)
		return res;

	phy->speed = phy_dev->speed;
	phy->duplex = phy_dev->duplex;
	phy->pause = phy_dev->pause;
	phy->asym_pause = phy_dev->asym_pause;
	return 0;
}