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
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 struct lan78xx_net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,struct ethtool_link_ksettings*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *net,
				      struct ethtool_link_ksettings *cmd)
{
	struct lan78xx_net *dev = FUNC0(net);
	struct phy_device *phydev = net->phydev;
	int ret;

	ret = FUNC2(dev->intf);
	if (ret < 0)
		return ret;

	FUNC1(phydev, cmd);

	FUNC3(dev->intf);

	return ret;
}