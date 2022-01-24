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
struct bnx2 {scalar_t__ link_up; int autoneg; int mii_bmcr; int phy_flags; int /*<<< orphan*/  phy_lock; void* current_interval; scalar_t__ serdes_an_pending; } ;

/* Variables and functions */
 int AUTONEG_SPEED ; 
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED1000 ; 
 int BNX2_PHY_FLAG_FORCED_DOWN ; 
 int BNX2_PHY_FLAG_PARALLEL_DETECT ; 
 void* BNX2_TIMER_INTERVAL ; 
 int MII_BNX2_MISC_SHADOW ; 
 int MISC_SHDW_AN_DBG ; 
 int MISC_SHDW_AN_DBG_NOSYNC ; 
 scalar_t__ FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct bnx2 *bp)
{
	int check_link = 1;

	FUNC5(&bp->phy_lock);
	if (bp->serdes_an_pending) {
		bp->serdes_an_pending--;
		check_link = 0;
	} else if ((bp->link_up == 0) && (bp->autoneg & AUTONEG_SPEED)) {
		u32 bmcr;

		bp->current_interval = BNX2_TIMER_INTERVAL;

		FUNC2(bp, bp->mii_bmcr, &bmcr);

		if (bmcr & BMCR_ANENABLE) {
			if (FUNC0(bp)) {
				bmcr &= ~BMCR_ANENABLE;
				bmcr |= BMCR_SPEED1000 | BMCR_FULLDPLX;
				FUNC4(bp, bp->mii_bmcr, bmcr);
				bp->phy_flags |= BNX2_PHY_FLAG_PARALLEL_DETECT;
			}
		}
	}
	else if ((bp->link_up) && (bp->autoneg & AUTONEG_SPEED) &&
		 (bp->phy_flags & BNX2_PHY_FLAG_PARALLEL_DETECT)) {
		u32 phy2;

		FUNC4(bp, 0x17, 0x0f01);
		FUNC2(bp, 0x15, &phy2);
		if (phy2 & 0x20) {
			u32 bmcr;

			FUNC2(bp, bp->mii_bmcr, &bmcr);
			bmcr |= BMCR_ANENABLE;
			FUNC4(bp, bp->mii_bmcr, bmcr);

			bp->phy_flags &= ~BNX2_PHY_FLAG_PARALLEL_DETECT;
		}
	} else
		bp->current_interval = BNX2_TIMER_INTERVAL;

	if (check_link) {
		u32 val;

		FUNC4(bp, MII_BNX2_MISC_SHADOW, MISC_SHDW_AN_DBG);
		FUNC2(bp, MII_BNX2_MISC_SHADOW, &val);
		FUNC2(bp, MII_BNX2_MISC_SHADOW, &val);

		if (bp->link_up && (val & MISC_SHDW_AN_DBG_NOSYNC)) {
			if (!(bp->phy_flags & BNX2_PHY_FLAG_FORCED_DOWN)) {
				FUNC1(bp, 1);
				bp->phy_flags |= BNX2_PHY_FLAG_FORCED_DOWN;
			} else
				FUNC3(bp);
		} else if (!bp->link_up && !(val & MISC_SHDW_AN_DBG_NOSYNC))
			FUNC3(bp);
	}
	FUNC6(&bp->phy_lock);
}