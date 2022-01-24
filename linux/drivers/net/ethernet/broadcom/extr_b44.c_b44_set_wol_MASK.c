#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct b44 {TYPE_1__* sdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FLAG_WOL_ENABLE ; 
 int WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct b44* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct b44 *bp = FUNC1(dev);

	FUNC2(&bp->lock);
	if (wol->wolopts & WAKE_MAGIC)
		bp->flags |= B44_FLAG_WOL_ENABLE;
	else
		bp->flags &= ~B44_FLAG_WOL_ENABLE;
	FUNC3(&bp->lock);

	FUNC0(bp->sdev->dev, wol->wolopts & WAKE_MAGIC);
	return 0;
}