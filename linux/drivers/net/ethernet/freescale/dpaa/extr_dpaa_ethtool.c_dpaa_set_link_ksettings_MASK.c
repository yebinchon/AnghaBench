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
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ethtool_link_ksettings const*) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev,
				   const struct ethtool_link_ksettings *cmd)
{
	int err;

	if (!net_dev->phydev) {
		FUNC0(net_dev, "phy device not initialized\n");
		return -ENODEV;
	}

	err = FUNC1(net_dev->phydev, cmd);
	if (err < 0)
		FUNC0(net_dev, "phy_ethtool_ksettings_set() = %d\n", err);

	return err;
}