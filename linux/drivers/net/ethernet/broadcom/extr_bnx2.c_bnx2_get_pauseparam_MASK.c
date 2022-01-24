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
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;
struct bnx2 {int autoneg; int flow_ctrl; } ;

/* Variables and functions */
 int AUTONEG_FLOW_CTRL ; 
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 struct bnx2* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void
FUNC1(struct net_device *dev, struct ethtool_pauseparam *epause)
{
	struct bnx2 *bp = FUNC0(dev);

	epause->autoneg = ((bp->autoneg & AUTONEG_FLOW_CTRL) != 0);
	epause->rx_pause = ((bp->flow_ctrl & FLOW_CTRL_RX) != 0);
	epause->tx_pause = ((bp->flow_ctrl & FLOW_CTRL_TX) != 0);
}