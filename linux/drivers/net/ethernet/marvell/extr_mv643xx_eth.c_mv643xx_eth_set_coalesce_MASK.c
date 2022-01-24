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
struct mv643xx_eth_private {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  tx_coalesce_usecs; int /*<<< orphan*/  rx_coalesce_usecs; } ;

/* Variables and functions */
 struct mv643xx_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev, struct ethtool_coalesce *ec)
{
	struct mv643xx_eth_private *mp = FUNC0(dev);

	FUNC1(mp, ec->rx_coalesce_usecs);
	FUNC2(mp, ec->tx_coalesce_usecs);

	return 0;
}