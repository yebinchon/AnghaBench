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
struct net_device {scalar_t__ phydev; } ;
struct mv643xx_eth_private {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mv643xx_eth_private*,struct ethtool_link_ksettings*) ; 
 int FUNC1 (struct mv643xx_eth_private*,struct ethtool_link_ksettings*) ; 
 struct mv643xx_eth_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev,
			       struct ethtool_link_ksettings *cmd)
{
	struct mv643xx_eth_private *mp = FUNC2(dev);

	if (dev->phydev)
		return FUNC0(mp, cmd);
	else
		return FUNC1(mp, cmd);
}