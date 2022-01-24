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
struct ucc_geth_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ucc_geth_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*,struct ethtool_link_ksettings const*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev,
		  const struct ethtool_link_ksettings *cmd)
{
	struct ucc_geth_private *ugeth = FUNC0(netdev);
	struct phy_device *phydev = ugeth->phydev;

	if (!phydev)
		return -ENODEV;

	return FUNC1(phydev, cmd);
}