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
struct sky2_port {int /*<<< orphan*/  flow_mode; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  SKY2_FLAG_AUTO_PAUSE ; 
 struct sky2_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_port*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			       struct ethtool_pauseparam *ecmd)
{
	struct sky2_port *sky2 = FUNC0(dev);

	if (ecmd->autoneg == AUTONEG_ENABLE)
		sky2->flags |= SKY2_FLAG_AUTO_PAUSE;
	else
		sky2->flags &= ~SKY2_FLAG_AUTO_PAUSE;

	sky2->flow_mode = FUNC2(ecmd->rx_pause, ecmd->tx_pause);

	if (FUNC1(dev))
		FUNC3(sky2);

	return 0;
}