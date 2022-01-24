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
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct b44 {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int B44_FLAG_PAUSE_AUTO ; 
 int B44_FLAG_RX_PAUSE ; 
 int B44_FLAG_TX_PAUSE ; 
 int /*<<< orphan*/  B44_FULL_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct b44*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*) ; 
 struct b44* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				struct ethtool_pauseparam *epause)
{
	struct b44 *bp = FUNC5(dev);

	FUNC6(&bp->lock);
	if (epause->autoneg)
		bp->flags |= B44_FLAG_PAUSE_AUTO;
	else
		bp->flags &= ~B44_FLAG_PAUSE_AUTO;
	if (epause->rx_pause)
		bp->flags |= B44_FLAG_RX_PAUSE;
	else
		bp->flags &= ~B44_FLAG_RX_PAUSE;
	if (epause->tx_pause)
		bp->flags |= B44_FLAG_TX_PAUSE;
	else
		bp->flags &= ~B44_FLAG_TX_PAUSE;
	if (bp->flags & B44_FLAG_PAUSE_AUTO) {
		FUNC2(bp);
		FUNC4(bp);
		FUNC3(bp, B44_FULL_RESET);
	} else {
		FUNC0(bp, bp->flags);
	}
	FUNC7(&bp->lock);

	FUNC1(bp);

	return 0;
}