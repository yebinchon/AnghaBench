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
struct skge_port {void* flow_control; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;

/* Variables and functions */
 void* FLOW_MODE_LOC_SEND ; 
 void* FLOW_MODE_NONE ; 
 void* FLOW_MODE_SYMMETRIC ; 
 void* FLOW_MODE_SYM_OR_REM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct ethtool_pauseparam*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			       struct ethtool_pauseparam *ecmd)
{
	struct skge_port *skge = FUNC1(dev);
	struct ethtool_pauseparam old;
	int err = 0;

	FUNC4(dev, &old);

	if (ecmd->autoneg != old.autoneg)
		skge->flow_control = ecmd->autoneg ? FLOW_MODE_NONE : FLOW_MODE_SYMMETRIC;
	else {
		if (ecmd->rx_pause && ecmd->tx_pause)
			skge->flow_control = FLOW_MODE_SYMMETRIC;
		else if (ecmd->rx_pause && !ecmd->tx_pause)
			skge->flow_control = FLOW_MODE_SYM_OR_REM;
		else if (!ecmd->rx_pause && ecmd->tx_pause)
			skge->flow_control = FLOW_MODE_LOC_SEND;
		else
			skge->flow_control = FLOW_MODE_NONE;
	}

	if (FUNC2(dev)) {
		FUNC3(dev);
		err = FUNC5(dev);
		if (err) {
			FUNC0(dev);
			return err;
		}
	}

	return 0;
}