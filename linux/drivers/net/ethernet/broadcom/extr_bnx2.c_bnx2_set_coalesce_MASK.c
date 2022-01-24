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
typedef  void* u16 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int /*<<< orphan*/  stats_block_coalesce_usecs; scalar_t__ tx_max_coalesced_frames_irq; scalar_t__ tx_coalesce_usecs_irq; scalar_t__ tx_max_coalesced_frames; scalar_t__ tx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames_irq; scalar_t__ rx_coalesce_usecs_irq; scalar_t__ rx_max_coalesced_frames; scalar_t__ rx_coalesce_usecs; } ;
struct bnx2 {int rx_ticks; int rx_quick_cons_trip; int rx_ticks_int; int rx_quick_cons_trip_int; int tx_ticks; int tx_quick_cons_trip; int tx_ticks_int; int tx_quick_cons_trip_int; int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  stats_ticks; } ;

/* Variables and functions */
 int BNX2_FLAG_BROKEN_STATS ; 
 int /*<<< orphan*/  BNX2_HC_STATS_TICKS_HC_STAT_TICKS ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int) ; 
 struct bnx2* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, struct ethtool_coalesce *coal)
{
	struct bnx2 *bp = FUNC3(dev);

	bp->rx_ticks = (u16) coal->rx_coalesce_usecs;
	if (bp->rx_ticks > 0x3ff) bp->rx_ticks = 0x3ff;

	bp->rx_quick_cons_trip = (u16) coal->rx_max_coalesced_frames;
	if (bp->rx_quick_cons_trip > 0xff) bp->rx_quick_cons_trip = 0xff;

	bp->rx_ticks_int = (u16) coal->rx_coalesce_usecs_irq;
	if (bp->rx_ticks_int > 0x3ff) bp->rx_ticks_int = 0x3ff;

	bp->rx_quick_cons_trip_int = (u16) coal->rx_max_coalesced_frames_irq;
	if (bp->rx_quick_cons_trip_int > 0xff)
		bp->rx_quick_cons_trip_int = 0xff;

	bp->tx_ticks = (u16) coal->tx_coalesce_usecs;
	if (bp->tx_ticks > 0x3ff) bp->tx_ticks = 0x3ff;

	bp->tx_quick_cons_trip = (u16) coal->tx_max_coalesced_frames;
	if (bp->tx_quick_cons_trip > 0xff) bp->tx_quick_cons_trip = 0xff;

	bp->tx_ticks_int = (u16) coal->tx_coalesce_usecs_irq;
	if (bp->tx_ticks_int > 0x3ff) bp->tx_ticks_int = 0x3ff;

	bp->tx_quick_cons_trip_int = (u16) coal->tx_max_coalesced_frames_irq;
	if (bp->tx_quick_cons_trip_int > 0xff) bp->tx_quick_cons_trip_int =
		0xff;

	bp->stats_ticks = coal->stats_block_coalesce_usecs;
	if (bp->flags & BNX2_FLAG_BROKEN_STATS) {
		if (bp->stats_ticks != 0 && bp->stats_ticks != USEC_PER_SEC)
			bp->stats_ticks = USEC_PER_SEC;
	}
	if (bp->stats_ticks > BNX2_HC_STATS_TICKS_HC_STAT_TICKS)
		bp->stats_ticks = BNX2_HC_STATS_TICKS_HC_STAT_TICKS;
	bp->stats_ticks &= BNX2_HC_STATS_TICKS_HC_STAT_TICKS;

	if (FUNC4(bp->dev)) {
		FUNC2(bp, true);
		FUNC0(bp, 0);
		FUNC1(bp, true);
	}

	return 0;
}