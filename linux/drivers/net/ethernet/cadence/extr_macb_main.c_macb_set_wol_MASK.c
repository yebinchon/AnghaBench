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
struct macb {int wol; TYPE_1__* pdev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MACB_WOL_ENABLED ; 
 int MACB_WOL_HAS_MAGIC_PACKET ; 
 int WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct macb* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct macb *bp = FUNC1(netdev);

	if (!(bp->wol & MACB_WOL_HAS_MAGIC_PACKET) ||
	    (wol->wolopts & ~WAKE_MAGIC))
		return -EOPNOTSUPP;

	if (wol->wolopts & WAKE_MAGIC)
		bp->wol |= MACB_WOL_ENABLED;
	else
		bp->wol &= ~MACB_WOL_ENABLED;

	FUNC0(&bp->pdev->dev, bp->wol & MACB_WOL_ENABLED);

	return 0;
}