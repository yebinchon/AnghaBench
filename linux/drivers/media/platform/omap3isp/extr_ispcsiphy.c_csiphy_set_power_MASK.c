#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct isp_csiphy {TYPE_1__* isp; int /*<<< orphan*/  cfg_regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ISPCSI2_PHY_CFG ; 
 int /*<<< orphan*/  ISPCSI2_PHY_CFG_PWR_CMD_MASK ; 
 int ISPCSI2_PHY_CFG_PWR_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct isp_csiphy *phy, u32 power)
{
	u32 reg;
	u8 retry_count;

	FUNC1(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG,
			ISPCSI2_PHY_CFG_PWR_CMD_MASK, power);

	retry_count = 0;
	do {
		FUNC3(50);
		reg = FUNC2(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG) &
				    ISPCSI2_PHY_CFG_PWR_STATUS_MASK;

		if (reg != power >> 2)
			retry_count++;

	} while ((reg != power >> 2) && (retry_count < 100));

	if (retry_count == 100) {
		FUNC0(phy->isp->dev, "CSI2 CIO set power failed!\n");
		return -EBUSY;
	}

	return 0;
}