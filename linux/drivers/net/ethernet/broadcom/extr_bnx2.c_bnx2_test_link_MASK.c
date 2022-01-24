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
typedef  int u32 ;
struct bnx2 {int phy_flags; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  mii_bmsr1; scalar_t__ link_up; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bnx2 *bp)
{
	u32 bmsr;

	if (!FUNC3(bp->dev))
		return -ENODEV;

	if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) {
		if (bp->link_up)
			return 0;
		return -ENODEV;
	}
	FUNC4(&bp->phy_lock);
	FUNC1(bp);
	FUNC2(bp, bp->mii_bmsr1, &bmsr);
	FUNC2(bp, bp->mii_bmsr1, &bmsr);
	FUNC0(bp);
	FUNC5(&bp->phy_lock);

	if (bmsr & BMSR_LSTATUS) {
		return 0;
	}
	return -ENODEV;
}