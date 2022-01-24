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
struct ethtool_wolinfo {void* wolopts; void* supported; int /*<<< orphan*/  sopass; } ;
struct bnxt {int flags; scalar_t__ wol; } ;

/* Variables and functions */
 int BNXT_FLAG_WOL_CAP ; 
 void* WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct bnxt *bp = FUNC1(dev);

	wol->supported = 0;
	wol->wolopts = 0;
	FUNC0(&wol->sopass, 0, sizeof(wol->sopass));
	if (bp->flags & BNXT_FLAG_WOL_CAP) {
		wol->supported = WAKE_MAGIC;
		if (bp->wol)
			wol->wolopts = WAKE_MAGIC;
	}
}