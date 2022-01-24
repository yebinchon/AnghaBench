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
typedef  int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_7101_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct bnx2x *bp, struct bnx2x_phy *phy)
{
	u16 val, cnt;

	FUNC0(bp, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_7101_RESET, &val);

	for (cnt = 0; cnt < 10; cnt++) {
		FUNC2(50);
		/* Writes a self-clearing reset */
		FUNC1(bp, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_7101_RESET,
				 (val | (1<<15)));
		/* Wait for clear */
		FUNC0(bp, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_7101_RESET, &val);

		if ((val & (1<<15)) == 0)
			break;
	}
}