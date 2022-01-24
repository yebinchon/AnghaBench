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
struct bnx2 {int phy_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int BNX2_PHY_FLAG_SERDES ; 
 int /*<<< orphan*/  MII_BNX2_BLK_ADDR ; 
 int /*<<< orphan*/  MII_BNX2_BLK_ADDR_COMBO_IEEEB0 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bnx2 *bp)
{
	if ((bp->phy_flags & BNX2_PHY_FLAG_SERDES) &&
	    (FUNC0(bp) == BNX2_CHIP_5709))
		FUNC1(bp, MII_BNX2_BLK_ADDR,
			       MII_BNX2_BLK_ADDR_COMBO_IEEEB0);
}