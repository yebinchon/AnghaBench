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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2 {scalar_t__ loopback; int link_up; int phy_flags; int autoneg; int /*<<< orphan*/  mii_bmcr; int /*<<< orphan*/  mii_bmsr1; } ;

/* Variables and functions */
 int AUTONEG_SPEED ; 
 int BMCR_ANENABLE ; 
 int BMSR_LSTATUS ; 
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5706 ; 
 scalar_t__ BNX2_CHIP_5708 ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int /*<<< orphan*/  BNX2_EMAC_STATUS ; 
 int BNX2_EMAC_STATUS_LINK ; 
 int BNX2_PHY_FLAG_FORCED_DOWN ; 
 int BNX2_PHY_FLAG_PARALLEL_DETECT ; 
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int BNX2_PHY_FLAG_SERDES ; 
 int FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 scalar_t__ MAC_LOOPBACK ; 
 int /*<<< orphan*/  MII_BNX2_MISC_SHADOW ; 
 int MISC_SHDW_AN_DBG ; 
 int MISC_SHDW_AN_DBG_NOSYNC ; 
 scalar_t__ PHY_LOOPBACK ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC15(struct bnx2 *bp)
{
	u32 bmsr;
	u8 link_up;

	if (bp->loopback == MAC_LOOPBACK || bp->loopback == PHY_LOOPBACK) {
		bp->link_up = 1;
		return 0;
	}

	if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
		return 0;

	link_up = bp->link_up;

	FUNC9(bp);
	FUNC10(bp, bp->mii_bmsr1, &bmsr);
	FUNC10(bp, bp->mii_bmsr1, &bmsr);
	FUNC7(bp);

	if ((bp->phy_flags & BNX2_PHY_FLAG_SERDES) &&
	    (FUNC0(bp) == BNX2_CHIP_5706)) {
		u32 val, an_dbg;

		if (bp->phy_flags & BNX2_PHY_FLAG_FORCED_DOWN) {
			FUNC2(bp, 0);
			bp->phy_flags &= ~BNX2_PHY_FLAG_FORCED_DOWN;
		}
		val = FUNC1(bp, BNX2_EMAC_STATUS);

		FUNC14(bp, MII_BNX2_MISC_SHADOW, MISC_SHDW_AN_DBG);
		FUNC10(bp, MII_BNX2_MISC_SHADOW, &an_dbg);
		FUNC10(bp, MII_BNX2_MISC_SHADOW, &an_dbg);

		if ((val & BNX2_EMAC_STATUS_LINK) &&
		    !(an_dbg & MISC_SHDW_AN_DBG_NOSYNC))
			bmsr |= BMSR_LSTATUS;
		else
			bmsr &= ~BMSR_LSTATUS;
	}

	if (bmsr & BMSR_LSTATUS) {
		bp->link_up = 1;

		if (bp->phy_flags & BNX2_PHY_FLAG_SERDES) {
			if (FUNC0(bp) == BNX2_CHIP_5706)
				FUNC3(bp);
			else if (FUNC0(bp) == BNX2_CHIP_5708)
				FUNC4(bp);
			else if (FUNC0(bp) == BNX2_CHIP_5709)
				FUNC5(bp);
		}
		else {
			FUNC6(bp);
		}
		FUNC12(bp);
	}
	else {
		if ((bp->phy_flags & BNX2_PHY_FLAG_SERDES) &&
		    (bp->autoneg & AUTONEG_SPEED))
			FUNC8(bp);

		if (bp->phy_flags & BNX2_PHY_FLAG_PARALLEL_DETECT) {
			u32 bmcr;

			FUNC10(bp, bp->mii_bmcr, &bmcr);
			bmcr |= BMCR_ANENABLE;
			FUNC14(bp, bp->mii_bmcr, bmcr);

			bp->phy_flags &= ~BNX2_PHY_FLAG_PARALLEL_DETECT;
		}
		bp->link_up = 0;
	}

	if (bp->link_up != link_up) {
		FUNC11(bp);
	}

	FUNC13(bp);

	return 0;
}