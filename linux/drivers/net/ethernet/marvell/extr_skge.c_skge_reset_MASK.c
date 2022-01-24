#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct skge_hw {int chip_id; int phy_type; int copper; int ports; char chip_rev; int ram_size; int ram_offset; int intr_mask; TYPE_1__* pdev; int /*<<< orphan*/  phy_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_CTST ; 
 int /*<<< orphan*/  B0_HWE_IMSK ; 
 int /*<<< orphan*/  B0_HWE_ISRC ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B0_ISRC ; 
 int /*<<< orphan*/  B0_LED ; 
 int /*<<< orphan*/  B0_POWER_CTRL ; 
 int /*<<< orphan*/  B2_CHIP_ID ; 
 int /*<<< orphan*/  B2_E_0 ; 
 int /*<<< orphan*/  B2_E_1 ; 
 int /*<<< orphan*/  B2_IRQM_CTRL ; 
 int /*<<< orphan*/  B2_IRQM_INI ; 
 int /*<<< orphan*/  B2_IRQM_MSK ; 
 int /*<<< orphan*/  B2_MAC_CFG ; 
 int /*<<< orphan*/  B2_PMD_TYP ; 
 int /*<<< orphan*/  B2_TI_CTRL ; 
 int /*<<< orphan*/  B2_TST_CTRL1 ; 
 int /*<<< orphan*/  B2_TST_CTRL2 ; 
 int /*<<< orphan*/  B3_RI_CTRL ; 
 int /*<<< orphan*/  B3_RI_RTO_R1 ; 
 int /*<<< orphan*/  B3_RI_RTO_R2 ; 
 int /*<<< orphan*/  B3_RI_RTO_XA1 ; 
 int /*<<< orphan*/  B3_RI_RTO_XA2 ; 
 int /*<<< orphan*/  B3_RI_RTO_XS1 ; 
 int /*<<< orphan*/  B3_RI_RTO_XS2 ; 
 int /*<<< orphan*/  B3_RI_WTO_R1 ; 
 int /*<<< orphan*/  B3_RI_WTO_R2 ; 
 int /*<<< orphan*/  B3_RI_WTO_XA1 ; 
 int /*<<< orphan*/  B3_RI_WTO_XA2 ; 
 int /*<<< orphan*/  B3_RI_WTO_XS1 ; 
 int /*<<< orphan*/  B3_RI_WTO_XS2 ; 
 char CFG_CHIP_R_MSK ; 
 char CFG_SNG_MAC ; 
#define  CHIP_ID_GENESIS 133 
#define  CHIP_ID_YUKON 132 
#define  CHIP_ID_YUKON_LITE 131 
#define  CHIP_ID_YUKON_LP 130 
 int CS_CLK_RUN_ENA ; 
 int CS_CLK_RUN_HOT ; 
 int CS_CLK_RUN_RST ; 
 int CS_MRST_CLR ; 
 int CS_RST_CLR ; 
 int CS_RST_SET ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GMAC_LINK_CTRL ; 
 int GMLC_RST_CLR ; 
 int GMLC_RST_SET ; 
 int IS_ERR_MSK ; 
 int IS_EXT_REG ; 
 int IS_HW_ERR ; 
 int IS_IRQ_SENSOR ; 
 int IS_XA1_F ; 
 int IS_XA2_F ; 
 int LED_STAT_ON ; 
 int /*<<< orphan*/  PCI_DEV_REG1 ; 
 int /*<<< orphan*/  PCI_PHY_COMA ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_ERROR_BITS ; 
 int PC_VAUX_ENA ; 
 int PC_VAUX_OFF ; 
 int PC_VCC_ENA ; 
 int PC_VCC_ON ; 
 int /*<<< orphan*/  PHY_ADDR_BCOM ; 
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
 int /*<<< orphan*/  PHY_ADDR_XMAC ; 
 int RI_RST_CLR ; 
#define  SK_PHY_BCOM 129 
 int SK_PHY_MARV_COPPER ; 
#define  SK_PHY_XMAC 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SK_RI_TO_53 ; 
 int TIM_CLR_IRQ ; 
 int TIM_START ; 
 int TIM_STOP ; 
 int TST_CFG_WRITE_OFF ; 
 int TST_CFG_WRITE_ON ; 
 int /*<<< orphan*/  TXA_CTRL ; 
 int TXA_ENA_ARB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int) ; 
 scalar_t__ FUNC5 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct skge_hw*,int) ; 

__attribute__((used)) static int FUNC18(struct skge_hw *hw)
{
	u32 reg;
	u16 ctst, pci_status;
	u8 t8, mac_cfg, pmd_type;
	int i;

	ctst = FUNC10(hw, B0_CTST);

	/* do a SW reset */
	FUNC16(hw, B0_CTST, CS_RST_SET);
	FUNC16(hw, B0_CTST, CS_RST_CLR);

	/* clear PCI errors, if any */
	FUNC16(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
	FUNC16(hw, B2_TST_CTRL2, 0);

	FUNC7(hw->pdev, PCI_STATUS, &pci_status);
	FUNC9(hw->pdev, PCI_STATUS,
			      pci_status | PCI_STATUS_ERROR_BITS);
	FUNC16(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
	FUNC16(hw, B0_CTST, CS_MRST_CLR);

	/* restore CLK_RUN bits (for Yukon-Lite) */
	FUNC14(hw, B0_CTST,
		     ctst & (CS_CLK_RUN_HOT|CS_CLK_RUN_RST|CS_CLK_RUN_ENA));

	hw->chip_id = FUNC12(hw, B2_CHIP_ID);
	hw->phy_type = FUNC12(hw, B2_E_1) & 0xf;
	pmd_type = FUNC12(hw, B2_PMD_TYP);
	hw->copper = (pmd_type == 'T' || pmd_type == '1');

	switch (hw->chip_id) {
	case CHIP_ID_GENESIS:
#ifdef CONFIG_SKGE_GENESIS
		switch (hw->phy_type) {
		case SK_PHY_XMAC:
			hw->phy_addr = PHY_ADDR_XMAC;
			break;
		case SK_PHY_BCOM:
			hw->phy_addr = PHY_ADDR_BCOM;
			break;
		default:
			dev_err(&hw->pdev->dev, "unsupported phy type 0x%x\n",
			       hw->phy_type);
			return -EOPNOTSUPP;
		}
		break;
#else
		FUNC1(&hw->pdev->dev, "Genesis chip detected but not configured\n");
		return -EOPNOTSUPP;
#endif

	case CHIP_ID_YUKON:
	case CHIP_ID_YUKON_LITE:
	case CHIP_ID_YUKON_LP:
		if (hw->phy_type < SK_PHY_MARV_COPPER && pmd_type != 'S')
			hw->copper = 1;

		hw->phy_addr = PHY_ADDR_MARV;
		break;

	default:
		FUNC1(&hw->pdev->dev, "unsupported chip type 0x%x\n",
		       hw->chip_id);
		return -EOPNOTSUPP;
	}

	mac_cfg = FUNC12(hw, B2_MAC_CFG);
	hw->ports = (mac_cfg & CFG_SNG_MAC) ? 1 : 2;
	hw->chip_rev = (mac_cfg & CFG_CHIP_R_MSK) >> 4;

	/* read the adapters RAM size */
	t8 = FUNC12(hw, B2_E_0);
	if (FUNC5(hw)) {
		if (t8 == 3) {
			/* special case: 4 x 64k x 36, offset = 0x80000 */
			hw->ram_size = 0x100000;
			hw->ram_offset = 0x80000;
		} else
			hw->ram_size = t8 * 512;
	} else if (t8 == 0)
		hw->ram_size = 0x20000;
	else
		hw->ram_size = t8 * 4096;

	hw->intr_mask = IS_HW_ERR;

	/* Use PHY IRQ for all but fiber based Genesis board */
	if (!(FUNC5(hw) && hw->phy_type == SK_PHY_XMAC))
		hw->intr_mask |= IS_EXT_REG;

	if (FUNC5(hw))
		FUNC3(hw);
	else {
		/* switch power to VCC (WA for VAUX problem) */
		FUNC16(hw, B0_POWER_CTRL,
			    PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_OFF | PC_VCC_ON);

		/* avoid boards with stuck Hardware error bits */
		if ((FUNC11(hw, B0_ISRC) & IS_HW_ERR) &&
		    (FUNC11(hw, B0_HWE_ISRC) & IS_IRQ_SENSOR)) {
			FUNC2(&hw->pdev->dev, "stuck hardware sensor bit\n");
			hw->intr_mask &= ~IS_HW_ERR;
		}

		/* Clear PHY COMA */
		FUNC16(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
		FUNC6(hw->pdev, PCI_DEV_REG1, &reg);
		reg &= ~PCI_PHY_COMA;
		FUNC8(hw->pdev, PCI_DEV_REG1, reg);
		FUNC16(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);


		for (i = 0; i < hw->ports; i++) {
			FUNC14(hw, FUNC0(i, GMAC_LINK_CTRL), GMLC_RST_SET);
			FUNC14(hw, FUNC0(i, GMAC_LINK_CTRL), GMLC_RST_CLR);
		}
	}

	/* turn off hardware timer (unused) */
	FUNC16(hw, B2_TI_CTRL, TIM_STOP);
	FUNC16(hw, B2_TI_CTRL, TIM_CLR_IRQ);
	FUNC16(hw, B0_LED, LED_STAT_ON);

	/* enable the Tx Arbiters */
	for (i = 0; i < hw->ports; i++)
		FUNC16(hw, FUNC0(i, TXA_CTRL), TXA_ENA_ARB);

	/* Initialize ram interface */
	FUNC14(hw, B3_RI_CTRL, RI_RST_CLR);

	FUNC16(hw, B3_RI_WTO_R1, SK_RI_TO_53);
	FUNC16(hw, B3_RI_WTO_XA1, SK_RI_TO_53);
	FUNC16(hw, B3_RI_WTO_XS1, SK_RI_TO_53);
	FUNC16(hw, B3_RI_RTO_R1, SK_RI_TO_53);
	FUNC16(hw, B3_RI_RTO_XA1, SK_RI_TO_53);
	FUNC16(hw, B3_RI_RTO_XS1, SK_RI_TO_53);
	FUNC16(hw, B3_RI_WTO_R2, SK_RI_TO_53);
	FUNC16(hw, B3_RI_WTO_XA2, SK_RI_TO_53);
	FUNC16(hw, B3_RI_WTO_XS2, SK_RI_TO_53);
	FUNC16(hw, B3_RI_RTO_R2, SK_RI_TO_53);
	FUNC16(hw, B3_RI_RTO_XA2, SK_RI_TO_53);
	FUNC16(hw, B3_RI_RTO_XS2, SK_RI_TO_53);

	FUNC15(hw, B0_HWE_IMSK, IS_ERR_MSK);

	/* Set interrupt moderation for Transmit only
	 * Receive interrupts avoided by NAPI
	 */
	FUNC15(hw, B2_IRQM_MSK, IS_XA1_F|IS_XA2_F);
	FUNC15(hw, B2_IRQM_INI, FUNC13(hw, 100));
	FUNC15(hw, B2_IRQM_CTRL, TIM_START);

	/* Leave irq disabled until first port is brought up. */
	FUNC15(hw, B0_IMSK, 0);

	for (i = 0; i < hw->ports; i++) {
		if (FUNC5(hw))
			FUNC4(hw, i);
		else
			FUNC17(hw, i);
	}

	return 0;
}