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
struct bnx2 {int phy_flags; int /*<<< orphan*/  phy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MSG_CODE_RESET ; 
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bnx2 *bp, int reset_phy)
{
	int rc;

	if ((rc = FUNC2(bp, BNX2_DRV_MSG_CODE_RESET)) != 0)
		return rc;

	FUNC4(&bp->phy_lock);
	FUNC0(bp, reset_phy);
	FUNC3(bp);
	if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
		FUNC1(bp);
	FUNC5(&bp->phy_lock);
	return 0;
}