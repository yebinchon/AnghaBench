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
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; } ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_MAX_TOTAL_RX_DESC_CNT ; 
 int /*<<< orphan*/  BNX2_MAX_TX_DESC_CNT ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX_SKB_FRAGS ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bnx2* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, struct ethtool_ringparam *ering)
{
	struct bnx2 *bp = FUNC1(dev);
	int rc;

	if ((ering->rx_pending > BNX2_MAX_TOTAL_RX_DESC_CNT) ||
		(ering->tx_pending > BNX2_MAX_TX_DESC_CNT) ||
		(ering->tx_pending <= MAX_SKB_FRAGS)) {

		return -EINVAL;
	}
	rc = FUNC0(bp, ering->rx_pending, ering->tx_pending,
				   false);
	return rc;
}