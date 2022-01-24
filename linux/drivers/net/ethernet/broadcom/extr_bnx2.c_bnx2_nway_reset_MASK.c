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
struct net_device {int dummy; } ;
struct bnx2 {int autoneg; int phy_flags; int serdes_an_pending; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  mii_bmcr; scalar_t__ current_interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  phy_port; } ;

/* Variables and functions */
 int AUTONEG_SPEED ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_LOOPBACK ; 
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int BNX2_PHY_FLAG_SERDES ; 
 scalar_t__ BNX2_SERDES_AN_TIMEOUT ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct bnx2* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct net_device *dev)
{
	struct bnx2 *bp = FUNC5(dev);
	u32 bmcr;

	if (!FUNC6(dev))
		return -EAGAIN;

	if (!(bp->autoneg & AUTONEG_SPEED)) {
		return -EINVAL;
	}

	FUNC7(&bp->phy_lock);

	if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) {
		int rc;

		rc = FUNC1(bp, bp->phy_port);
		FUNC8(&bp->phy_lock);
		return rc;
	}

	/* Force a link down visible on the other side */
	if (bp->phy_flags & BNX2_PHY_FLAG_SERDES) {
		FUNC2(bp, bp->mii_bmcr, BMCR_LOOPBACK);
		FUNC8(&bp->phy_lock);

		FUNC4(20);

		FUNC7(&bp->phy_lock);

		bp->current_interval = BNX2_SERDES_AN_TIMEOUT;
		bp->serdes_an_pending = 1;
		FUNC3(&bp->timer, jiffies + bp->current_interval);
	}

	FUNC0(bp, bp->mii_bmcr, &bmcr);
	bmcr &= ~BMCR_LOOPBACK;
	FUNC2(bp, bp->mii_bmcr, bmcr | BMCR_ANRESTART | BMCR_ANENABLE);

	FUNC8(&bp->phy_lock);

	return 0;
}