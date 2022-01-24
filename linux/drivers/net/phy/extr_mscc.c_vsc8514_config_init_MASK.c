#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct vsc8531_private {int pkg_init; int nleds; int /*<<< orphan*/ * leds_mode; scalar_t__ base_addr; } ;
struct TYPE_4__ {TYPE_1__* bus; scalar_t__ addr; } ;
struct phy_device {TYPE_2__ mdio; int /*<<< orphan*/  mdix_ctrl; struct vsc8531_private* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  ETH_TP_MDI_AUTO ; 
 int ETIMEDOUT ; 
 int MAC_CFG_MASK ; 
 int MAC_CFG_QSGMII ; 
 int /*<<< orphan*/  MEDIA_OP_MODE_COPPER ; 
 int /*<<< orphan*/  MEDIA_OP_MODE_MASK ; 
 int /*<<< orphan*/  MSCC_EXT_PAGE_ACCESS ; 
 int /*<<< orphan*/  MSCC_PHY_ACTIPHY_CNTL ; 
 int /*<<< orphan*/  MSCC_PHY_EXT_PHY_CNTL_1 ; 
 int /*<<< orphan*/  MSCC_PHY_EXT_PHY_CNTL_4 ; 
 int /*<<< orphan*/  MSCC_PHY_MAC_CFG_FASTLINK ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_EXTENDED ; 
 int MSCC_PHY_PAGE_EXTENDED_GPIO ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_STANDARD ; 
 int PHY_ADDR_REVERSED ; 
 int PHY_CNTL_4_ADDR_POS ; 
 int /*<<< orphan*/  PHY_MCB_S6G_CFG ; 
 int /*<<< orphan*/  PHY_MCB_TARGET ; 
 int /*<<< orphan*/  PHY_S6G_COMMON_CFG ; 
 int /*<<< orphan*/  PHY_S6G_DFT_CFG2 ; 
 int PHY_S6G_ENA_LANE_POS ; 
 int PHY_S6G_ENA_LOOP_POS ; 
 int /*<<< orphan*/  PHY_S6G_GPC_CFG ; 
 int /*<<< orphan*/  PHY_S6G_IB_STATUS0 ; 
 int PHY_S6G_IF_MODE_POS ; 
 int /*<<< orphan*/  PHY_S6G_LCPLL_CFG ; 
 int /*<<< orphan*/  PHY_S6G_MISC_CFG ; 
 int /*<<< orphan*/  PHY_S6G_PLL5G_CFG0 ; 
 int /*<<< orphan*/  PHY_S6G_PLL_CFG ; 
 int PHY_S6G_PLL_ENA_OFFS_POS ; 
 int PHY_S6G_PLL_FSM_CTRL_DATA_POS ; 
 int PHY_S6G_PLL_FSM_ENA_POS ; 
 int /*<<< orphan*/  PHY_S6G_PLL_STATUS ; 
 int PHY_S6G_QRATE_POS ; 
 int PHY_S6G_SYS_RST_POS ; 
 int PROC_CMD_MCB_ACCESS_MAC_CONF ; 
 int /*<<< orphan*/  PROC_CMD_NCOMPLETED_TIMEOUT_MS ; 
 int PROC_CMD_QSGMII_MAC ; 
 int PROC_CMD_READ_MOD_WRITE_PORT ; 
 int PROC_CMD_RST_CONF_PORT ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct phy_device*) ; 
 int FUNC16 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct phy_device*,int) ; 
 int FUNC18 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct phy_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct phy_device *phydev)
{
	struct vsc8531_private *vsc8531 = phydev->priv;
	unsigned long deadline;
	u16 val, addr;
	int ret, i;
	u32 reg;

	phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

	FUNC5(&phydev->mdio.bus->mdio_lock);

	FUNC2(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);

	addr = FUNC1(phydev, MSCC_PHY_EXT_PHY_CNTL_4);
	addr >>= PHY_CNTL_4_ADDR_POS;

	val = FUNC1(phydev, MSCC_PHY_ACTIPHY_CNTL);

	if (val & PHY_ADDR_REVERSED)
		vsc8531->base_addr = phydev->mdio.addr + addr;
	else
		vsc8531->base_addr = phydev->mdio.addr - addr;

	/* Some parts of the init sequence are identical for every PHY in the
	 * package. Some parts are modifying the GPIO register bank which is a
	 * set of registers that are affecting all PHYs, a few resetting the
	 * microprocessor common to all PHYs.
	 * All PHYs' interrupts mask register has to be zeroed before enabling
	 * any PHY's interrupt in this register.
	 * For all these reasons, we need to do the init sequence once and only
	 * once whatever is the first PHY in the package that is initialized and
	 * do the correct init sequence for all PHYs that are package-critical
	 * in this pre-init function.
	 */
	if (!FUNC17(phydev, val & PHY_ADDR_REVERSED ? 1 : 0))
		FUNC15(phydev);

	vsc8531->pkg_init = true;

	FUNC8(phydev, MSCC_EXT_PAGE_ACCESS,
		       MSCC_PHY_PAGE_EXTENDED_GPIO);

	val = FUNC7(phydev, MSCC_PHY_MAC_CFG_FASTLINK);

	val &= ~MAC_CFG_MASK;
	val |= MAC_CFG_QSGMII;
	ret = FUNC8(phydev, MSCC_PHY_MAC_CFG_FASTLINK, val);

	if (ret)
		goto err;

	ret = FUNC16(phydev,
			  PROC_CMD_MCB_ACCESS_MAC_CONF |
			  PROC_CMD_RST_CONF_PORT |
			  PROC_CMD_READ_MOD_WRITE_PORT | PROC_CMD_QSGMII_MAC);
	if (ret)
		goto err;

	/* 6g mcb */
	FUNC11(phydev, PHY_MCB_S6G_CFG, 0);
	/* lcpll mcb */
	FUNC11(phydev, PHY_S6G_LCPLL_CFG, 0);
	/* pll5gcfg0 */
	ret = FUNC19(phydev, PHY_MCB_TARGET,
					 PHY_S6G_PLL5G_CFG0, 0x7036f145);
	if (ret)
		goto err;

	FUNC9(phydev, PHY_S6G_LCPLL_CFG, 0);
	/* pllcfg */
	ret = FUNC19(phydev, PHY_MCB_TARGET,
					 PHY_S6G_PLL_CFG,
					 (3 << PHY_S6G_PLL_ENA_OFFS_POS) |
					 (120 << PHY_S6G_PLL_FSM_CTRL_DATA_POS)
					 | (0 << PHY_S6G_PLL_FSM_ENA_POS));
	if (ret)
		goto err;

	/* commoncfg */
	ret = FUNC19(phydev, PHY_MCB_TARGET,
					 PHY_S6G_COMMON_CFG,
					 (0 << PHY_S6G_SYS_RST_POS) |
					 (0 << PHY_S6G_ENA_LANE_POS) |
					 (0 << PHY_S6G_ENA_LOOP_POS) |
					 (0 << PHY_S6G_QRATE_POS) |
					 (3 << PHY_S6G_IF_MODE_POS));
	if (ret)
		goto err;

	/* misccfg */
	ret = FUNC19(phydev, PHY_MCB_TARGET,
					 PHY_S6G_MISC_CFG, 1);
	if (ret)
		goto err;

	/* gpcfg */
	ret = FUNC19(phydev, PHY_MCB_TARGET,
					 PHY_S6G_GPC_CFG, 768);
	if (ret)
		goto err;

	FUNC9(phydev, PHY_S6G_DFT_CFG2, 0);

	deadline = jiffies + FUNC4(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
	do {
		FUNC14(500, 1000);
		FUNC11(phydev, PHY_MCB_S6G_CFG,
				   0); /* read 6G MCB into CSRs */
		reg = FUNC18(phydev, PHY_MCB_TARGET,
						PHY_S6G_PLL_STATUS);
		if (reg == 0xffffffff) {
			FUNC6(&phydev->mdio.bus->mdio_lock);
			return -EIO;
		}

	} while (FUNC13(jiffies, deadline) && (reg & FUNC0(12)));

	if (reg & FUNC0(12)) {
		FUNC6(&phydev->mdio.bus->mdio_lock);
		return -ETIMEDOUT;
	}

	/* misccfg */
	ret = FUNC19(phydev, PHY_MCB_TARGET,
					 PHY_S6G_MISC_CFG, 0);
	if (ret)
		goto err;

	FUNC9(phydev, PHY_MCB_S6G_CFG, 0);

	deadline = jiffies + FUNC4(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
	do {
		FUNC14(500, 1000);
		FUNC11(phydev, PHY_MCB_S6G_CFG,
				   0); /* read 6G MCB into CSRs */
		reg = FUNC18(phydev, PHY_MCB_TARGET,
						PHY_S6G_IB_STATUS0);
		if (reg == 0xffffffff) {
			FUNC6(&phydev->mdio.bus->mdio_lock);
			return -EIO;
		}

	} while (FUNC13(jiffies, deadline) && !(reg & FUNC0(8)));

	if (!(reg & FUNC0(8))) {
		FUNC6(&phydev->mdio.bus->mdio_lock);
		return -ETIMEDOUT;
	}

	FUNC6(&phydev->mdio.bus->mdio_lock);

	ret = FUNC12(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

	if (ret)
		return ret;

	ret = FUNC10(phydev, MSCC_PHY_EXT_PHY_CNTL_1, MEDIA_OP_MODE_MASK,
			 MEDIA_OP_MODE_COPPER);

	if (ret)
		return ret;

	ret = FUNC3(phydev);

	if (ret)
		return ret;

	for (i = 0; i < vsc8531->nleds; i++) {
		ret = FUNC20(phydev, i, vsc8531->leds_mode[i]);
		if (ret)
			return ret;
	}

	return ret;

err:
	FUNC6(&phydev->mdio.bus->mdio_lock);
	return ret;
}