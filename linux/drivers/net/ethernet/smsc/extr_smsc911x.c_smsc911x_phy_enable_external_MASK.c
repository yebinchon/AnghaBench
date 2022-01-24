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
struct smsc911x_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_CFG ; 
 unsigned int HW_CFG_EXT_PHY_EN_ ; 
 unsigned int HW_CFG_PHY_CLK_SEL_ ; 
 unsigned int HW_CFG_PHY_CLK_SEL_CLK_DIS_ ; 
 unsigned int HW_CFG_PHY_CLK_SEL_EXT_PHY_ ; 
 unsigned int HW_CFG_SMI_SEL_ ; 
 unsigned int FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct smsc911x_data *pdata)
{
	unsigned int hwcfg = FUNC0(pdata, HW_CFG);

	/* Disable phy clocks to the MAC */
	hwcfg &= (~HW_CFG_PHY_CLK_SEL_);
	hwcfg |= HW_CFG_PHY_CLK_SEL_CLK_DIS_;
	FUNC1(pdata, HW_CFG, hwcfg);
	FUNC2(10);	/* Enough time for clocks to stop */

	/* Switch to external phy */
	hwcfg |= HW_CFG_EXT_PHY_EN_;
	FUNC1(pdata, HW_CFG, hwcfg);

	/* Enable phy clocks to the MAC */
	hwcfg &= (~HW_CFG_PHY_CLK_SEL_);
	hwcfg |= HW_CFG_PHY_CLK_SEL_EXT_PHY_;
	FUNC1(pdata, HW_CFG, hwcfg);
	FUNC2(10);	/* Enough time for clocks to restart */

	hwcfg |= HW_CFG_SMI_SEL_;
	FUNC1(pdata, HW_CFG, hwcfg);
}