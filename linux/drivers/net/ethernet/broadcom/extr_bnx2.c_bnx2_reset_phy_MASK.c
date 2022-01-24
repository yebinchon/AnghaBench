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
struct bnx2 {int /*<<< orphan*/  mii_bmcr; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int EBUSY ; 
 int PHY_RESET_MAX_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct bnx2 *bp)
{
	int i;
	u32 reg;

        FUNC1(bp, bp->mii_bmcr, BMCR_RESET);

#define PHY_RESET_MAX_WAIT 100
	for (i = 0; i < PHY_RESET_MAX_WAIT; i++) {
		FUNC2(10);

		FUNC0(bp, bp->mii_bmcr, &reg);
		if (!(reg & BMCR_RESET)) {
			FUNC2(20);
			break;
		}
	}
	if (i == PHY_RESET_MAX_WAIT) {
		return -EBUSY;
	}
	return 0;
}