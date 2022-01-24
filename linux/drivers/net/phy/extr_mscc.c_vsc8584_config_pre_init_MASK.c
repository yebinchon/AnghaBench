#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct reg_val {int member_0; int member_1; int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct firmware {scalar_t__ size; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct reg_val const*) ; 
 int /*<<< orphan*/  MII_VSC85XX_INT_MASK ; 
 int /*<<< orphan*/  MSCC_EXT_PAGE_ACCESS ; 
 int /*<<< orphan*/  MSCC_PHY_BYPASS_CONTROL ; 
 int /*<<< orphan*/  MSCC_PHY_CU_PMD_TX_CNTL ; 
 int /*<<< orphan*/  MSCC_PHY_EXT_CNTL_STATUS ; 
 int MSCC_PHY_PAGE_EXTENDED_2 ; 
 int MSCC_PHY_PAGE_EXTENDED_3 ; 
 int MSCC_PHY_PAGE_STANDARD ; 
 int MSCC_PHY_PAGE_TEST ; 
 int MSCC_PHY_PAGE_TR ; 
 int /*<<< orphan*/  MSCC_PHY_SERDES_TX_CRC_ERR_CNT ; 
 int /*<<< orphan*/  MSCC_PHY_TEST_PAGE_5 ; 
 int /*<<< orphan*/  MSCC_PHY_TEST_PAGE_8 ; 
 int /*<<< orphan*/  MSCC_PHY_TR_CNTL ; 
 int /*<<< orphan*/  MSCC_PHY_TR_MSB ; 
 int /*<<< orphan*/  MSCC_VSC8584_REVB_INT8051_FW ; 
 int MSCC_VSC8584_REVB_INT8051_FW_CRC ; 
 int /*<<< orphan*/  MSCC_VSC8584_REVB_INT8051_FW_START_ADDR ; 
 int PARALLEL_DET_IGNORE_ADVERTISED ; 
 int SMI_BROADCAST_WR_EN ; 
 int FUNC1 (int) ; 
 int TR_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct phy_device*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC11 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*,int) ; 
 scalar_t__ FUNC13 (struct phy_device*,struct firmware const*) ; 

__attribute__((used)) static int FUNC14(struct phy_device *phydev)
{
	const struct reg_val pre_init1[] = {
		{0x07fa, 0x0050100f},
		{0x1688, 0x00049f81},
		{0x0f90, 0x00688980},
		{0x03a4, 0x0000d8f0},
		{0x0fc0, 0x00000400},
		{0x0f82, 0x0012b002},
		{0x1686, 0x00000004},
		{0x168c, 0x00d2c46f},
		{0x17a2, 0x00000620},
		{0x16a0, 0x00eeffdd},
		{0x16a6, 0x00071448},
		{0x16a4, 0x0013132f},
		{0x16a8, 0x00000000},
		{0x0ffc, 0x00c0a028},
		{0x0fe8, 0x0091b06c},
		{0x0fea, 0x00041600},
		{0x0f80, 0x00fffaff},
		{0x0fec, 0x00901809},
		{0x0ffe, 0x00b01007},
		{0x16b0, 0x00eeff00},
		{0x16b2, 0x00007000},
		{0x16b4, 0x00000814},
	};
	const struct reg_val pre_init2[] = {
		{0x0486, 0x0008a518},
		{0x0488, 0x006dc696},
		{0x048a, 0x00000912},
	};
	const struct firmware *fw;
	struct device *dev = &phydev->mdio.dev;
	unsigned int i;
	u16 crc, reg;
	int ret;

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

	/* all writes below are broadcasted to all PHYs in the same package */
	reg = FUNC5(phydev, MSCC_PHY_EXT_CNTL_STATUS);
	reg |= SMI_BROADCAST_WR_EN;
	FUNC6(phydev, MSCC_PHY_EXT_CNTL_STATUS, reg);

	FUNC6(phydev, MII_VSC85XX_INT_MASK, 0);

	reg = FUNC5(phydev,  MSCC_PHY_BYPASS_CONTROL);
	reg |= PARALLEL_DET_IGNORE_ADVERTISED;
	FUNC6(phydev, MSCC_PHY_BYPASS_CONTROL, reg);

	/* The below register writes are tweaking analog and electrical
	 * configuration that were determined through characterization by PHY
	 * engineers. These don't mean anything more than "these are the best
	 * values".
	 */
	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED_3);

	FUNC6(phydev, MSCC_PHY_SERDES_TX_CRC_ERR_CNT, 0x2000);

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_TEST);

	FUNC6(phydev, MSCC_PHY_TEST_PAGE_5, 0x1f20);

	reg = FUNC5(phydev, MSCC_PHY_TEST_PAGE_8);
	reg |= 0x8000;
	FUNC6(phydev, MSCC_PHY_TEST_PAGE_8, reg);

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_TR);

	FUNC6(phydev, MSCC_PHY_TR_CNTL, TR_WRITE | FUNC1(0x2fa4));

	reg = FUNC5(phydev, MSCC_PHY_TR_MSB);
	reg &= ~0x007f;
	reg |= 0x0019;
	FUNC6(phydev, MSCC_PHY_TR_MSB, reg);

	FUNC6(phydev, MSCC_PHY_TR_CNTL, TR_WRITE | FUNC1(0x0fa4));

	for (i = 0; i < FUNC0(pre_init1); i++)
		FUNC9(phydev, pre_init1[i].reg, pre_init1[i].val);

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED_2);

	FUNC6(phydev, MSCC_PHY_CU_PMD_TX_CNTL, 0x028e);

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_TR);

	for (i = 0; i < FUNC0(pre_init2); i++)
		FUNC9(phydev, pre_init2[i].reg, pre_init2[i].val);

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_TEST);

	reg = FUNC5(phydev, MSCC_PHY_TEST_PAGE_8);
	reg &= ~0x8000;
	FUNC6(phydev, MSCC_PHY_TEST_PAGE_8, reg);

	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

	/* end of write broadcasting */
	reg = FUNC5(phydev, MSCC_PHY_EXT_CNTL_STATUS);
	reg &= ~SMI_BROADCAST_WR_EN;
	FUNC6(phydev, MSCC_PHY_EXT_CNTL_STATUS, reg);

	ret = FUNC8(&fw, MSCC_VSC8584_REVB_INT8051_FW, dev);
	if (ret) {
		FUNC3(dev, "failed to load firmware %s, ret: %d\n",
			MSCC_VSC8584_REVB_INT8051_FW, ret);
		return ret;
	}

	/* Add one byte to size for the one added by the patch_fw function */
	ret = FUNC10(phydev,
				 MSCC_VSC8584_REVB_INT8051_FW_START_ADDR,
				 fw->size + 1, &crc);
	if (ret)
		goto out;

	if (crc != MSCC_VSC8584_REVB_INT8051_FW_CRC) {
		FUNC2(dev, "FW CRC is not the expected one, patching FW\n");
		if (FUNC13(phydev, fw))
			FUNC4(dev,
				 "failed to patch FW, expect non-optimal device\n");
	}

	FUNC12(phydev, false);

	/* Add one byte to size for the one added by the patch_fw function */
	ret = FUNC10(phydev,
				 MSCC_VSC8584_REVB_INT8051_FW_START_ADDR,
				 fw->size + 1, &crc);
	if (ret)
		goto out;

	if (crc != MSCC_VSC8584_REVB_INT8051_FW_CRC)
		FUNC4(dev,
			 "FW CRC after patching is not the expected one, expect non-optimal device\n");

	ret = FUNC11(phydev);
	if (ret)
		goto out;

	FUNC12(phydev, true);

out:
	FUNC6(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

	FUNC7(fw);

	return ret;
}