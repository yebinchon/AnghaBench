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
struct b44 {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_CHIP_RESET_FULL ; 
 int /*<<< orphan*/  B44_CHIP_RESET_PARTIAL ; 
 int B44_FLAG_EXTERNAL_PHY ; 
 int /*<<< orphan*/  B44_MAC_CTRL ; 
 int /*<<< orphan*/  MAC_CTRL_PHY_PDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct b44 *bp)
{
	FUNC1(bp);
	/* reset PHY */
	FUNC2(bp);
	/* power down PHY */
	FUNC4(bp->dev, "powering down PHY\n");
	FUNC3(bp, B44_MAC_CTRL, MAC_CTRL_PHY_PDOWN);
	/* now reset the chip, but without enabling the MAC&PHY
	 * part of it. This has to be done _after_ we shut down the PHY */
	if (bp->flags & B44_FLAG_EXTERNAL_PHY)
		FUNC0(bp, B44_CHIP_RESET_FULL);
	else
		FUNC0(bp, B44_CHIP_RESET_PARTIAL);
}