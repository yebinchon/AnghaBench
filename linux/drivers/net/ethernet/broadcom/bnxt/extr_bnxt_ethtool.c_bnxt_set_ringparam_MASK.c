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
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;
struct bnxt {scalar_t__ rx_ring_size; scalar_t__ tx_ring_size; } ;

/* Variables and functions */
 scalar_t__ BNXT_MAX_RX_DESC_CNT ; 
 scalar_t__ BNXT_MAX_TX_DESC_CNT ; 
 int EINVAL ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int,int) ; 
 int FUNC1 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			      struct ethtool_ringparam *ering)
{
	struct bnxt *bp = FUNC3(dev);

	if ((ering->rx_pending > BNXT_MAX_RX_DESC_CNT) ||
	    (ering->tx_pending > BNXT_MAX_TX_DESC_CNT) ||
	    (ering->tx_pending <= MAX_SKB_FRAGS))
		return -EINVAL;

	if (FUNC4(dev))
		FUNC0(bp, false, false);

	bp->rx_ring_size = ering->rx_pending;
	bp->tx_ring_size = ering->tx_pending;
	FUNC2(bp);

	if (FUNC4(dev))
		return FUNC1(bp, false, false);

	return 0;
}