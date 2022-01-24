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
struct b44 {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int B44_FLAG_100_BASE_T ; 
 int B44_FLAG_FULL_DUPLEX ; 
 int B44_FLAG_RX_PAUSE ; 
 int B44_FLAG_TX_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b44 *bp)
{
	if (!FUNC1(bp->dev)) {
		FUNC0(bp->dev, "Link is down\n");
	} else {
		FUNC0(bp->dev, "Link is up at %d Mbps, %s duplex\n",
			    (bp->flags & B44_FLAG_100_BASE_T) ? 100 : 10,
			    (bp->flags & B44_FLAG_FULL_DUPLEX) ? "full" : "half");

		FUNC0(bp->dev, "Flow control is %s for TX and %s for RX\n",
			    (bp->flags & B44_FLAG_TX_PAUSE) ? "on" : "off",
			    (bp->flags & B44_FLAG_RX_PAUSE) ? "on" : "off");
	}
}