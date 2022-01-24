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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ethtool_wolinfo {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ethtool_wolinfo*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	int err;

	if (!dev->phydev)
		return -EOPNOTSUPP;

	err = FUNC1(dev->phydev, wol);
	/* Given that mv643xx_eth works without the marvell-specific PHY driver,
	 * this debugging hint is useful to have.
	 */
	if (err == -EOPNOTSUPP)
		FUNC0(dev, "The PHY does not support set_wol, was CONFIG_MARVELL_PHY enabled?\n");
	return err;
}