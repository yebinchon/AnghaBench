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
struct bnx2 {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MSG_CODE_RESET ; 
 int BNX2_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  BNX2_MAC_LOOPBACK ; 
 int BNX2_MAC_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  BNX2_PHY_LOOPBACK ; 
 int BNX2_PHY_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bnx2 *bp)
{
	int rc = 0;

	if (!FUNC3(bp->dev))
		return BNX2_LOOPBACK_FAILED;

	FUNC1(bp, BNX2_DRV_MSG_CODE_RESET);
	FUNC4(&bp->phy_lock);
	FUNC0(bp, 1);
	FUNC5(&bp->phy_lock);
	if (FUNC2(bp, BNX2_MAC_LOOPBACK))
		rc |= BNX2_MAC_LOOPBACK_FAILED;
	if (FUNC2(bp, BNX2_PHY_LOOPBACK))
		rc |= BNX2_PHY_LOOPBACK_FAILED;
	return rc;
}