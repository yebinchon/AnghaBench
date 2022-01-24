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
struct ethtool_ringparam {int rx_pending; scalar_t__ rx_mini_pending; scalar_t__ rx_jumbo_pending; int tx_pending; } ;
struct b44 {int rx_pending; int tx_pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FULL_RESET ; 
 int B44_RX_RING_SIZE ; 
 int B44_TX_RING_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*) ; 
 struct b44* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
			     struct ethtool_ringparam *ering)
{
	struct b44 *bp = FUNC4(dev);

	if ((ering->rx_pending > B44_RX_RING_SIZE - 1) ||
	    (ering->rx_mini_pending != 0) ||
	    (ering->rx_jumbo_pending != 0) ||
	    (ering->tx_pending > B44_TX_RING_SIZE - 1))
		return -EINVAL;

	FUNC6(&bp->lock);

	bp->rx_pending = ering->rx_pending;
	bp->tx_pending = ering->tx_pending;

	FUNC1(bp);
	FUNC3(bp);
	FUNC2(bp, B44_FULL_RESET);
	FUNC5(bp->dev);
	FUNC7(&bp->lock);

	FUNC0(bp);

	return 0;
}