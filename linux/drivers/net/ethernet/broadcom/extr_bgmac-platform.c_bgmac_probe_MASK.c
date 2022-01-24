#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  const* nicpm_base; int /*<<< orphan*/  const* idm_base; int /*<<< orphan*/  const* base; } ;
struct bgmac {scalar_t__ irq; int /*<<< orphan*/  feature_flags; int /*<<< orphan*/  phy_connect; int /*<<< orphan*/  cmn_maskset32; int /*<<< orphan*/  get_bus_clock; int /*<<< orphan*/  cco_ctl_maskset; int /*<<< orphan*/  clk_enable; int /*<<< orphan*/  clk_enabled; int /*<<< orphan*/  idm_write; int /*<<< orphan*/  idm_read; int /*<<< orphan*/  write; int /*<<< orphan*/  read; TYPE_2__ plat; TYPE_1__* net_dev; TYPE_3__* dma_dev; TYPE_3__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_FEAT_CLKCTLST ; 
 int /*<<< orphan*/  BGMAC_FEAT_CMDCFG_SR_REV4 ; 
 int /*<<< orphan*/  BGMAC_FEAT_FORCE_SPEED_2500 ; 
 int /*<<< orphan*/  BGMAC_FEAT_IDM_MASK ; 
 int /*<<< orphan*/  BGMAC_FEAT_NO_RESET ; 
 int /*<<< orphan*/  BGMAC_FEAT_RX_MASK_SETUP ; 
 int /*<<< orphan*/  BGMAC_FEAT_TX_MASK_SETUP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 struct bgmac* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (struct bgmac*) ; 
 int /*<<< orphan*/  bgmac_phy_connect_direct ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 void* FUNC6 (TYPE_3__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (struct device_node*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_bgmac_cco_ctl_maskset ; 
 int /*<<< orphan*/  platform_bgmac_clk_enable ; 
 int /*<<< orphan*/  platform_bgmac_clk_enabled ; 
 int /*<<< orphan*/  platform_bgmac_cmn_maskset32 ; 
 int /*<<< orphan*/  platform_bgmac_get_bus_clock ; 
 int /*<<< orphan*/  platform_bgmac_idm_read ; 
 int /*<<< orphan*/  platform_bgmac_idm_write ; 
 int /*<<< orphan*/  platform_bgmac_read ; 
 int /*<<< orphan*/  platform_bgmac_write ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  platform_phy_connect ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct bgmac*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct bgmac *bgmac;
	struct resource *regs;
	const u8 *mac_addr;

	bgmac = FUNC2(&pdev->dev);
	if (!bgmac)
		return -ENOMEM;

	FUNC12(pdev, bgmac);

	/* Set the features of the 4707 family */
	bgmac->feature_flags |= BGMAC_FEAT_CLKCTLST;
	bgmac->feature_flags |= BGMAC_FEAT_NO_RESET;
	bgmac->feature_flags |= BGMAC_FEAT_CMDCFG_SR_REV4;
	bgmac->feature_flags |= BGMAC_FEAT_TX_MASK_SETUP;
	bgmac->feature_flags |= BGMAC_FEAT_RX_MASK_SETUP;
	bgmac->feature_flags |= BGMAC_FEAT_IDM_MASK;

	bgmac->dev = &pdev->dev;
	bgmac->dma_dev = &pdev->dev;

	mac_addr = FUNC8(np);
	if (!FUNC0(mac_addr))
		FUNC7(bgmac->net_dev->dev_addr, mac_addr);
	else
		FUNC5(&pdev->dev, "MAC address not present in device tree\n");

	bgmac->irq = FUNC10(pdev, 0);
	if (bgmac->irq < 0)
		return bgmac->irq;

	regs = FUNC11(pdev, IORESOURCE_MEM, "amac_base");
	if (!regs) {
		FUNC4(&pdev->dev, "Unable to obtain base resource\n");
		return -EINVAL;
	}

	bgmac->plat.base = FUNC6(&pdev->dev, regs);
	if (FUNC0(bgmac->plat.base))
		return FUNC1(bgmac->plat.base);

	regs = FUNC11(pdev, IORESOURCE_MEM, "idm_base");
	if (regs) {
		bgmac->plat.idm_base = FUNC6(&pdev->dev, regs);
		if (FUNC0(bgmac->plat.idm_base))
			return FUNC1(bgmac->plat.idm_base);
		bgmac->feature_flags &= ~BGMAC_FEAT_IDM_MASK;
	}

	regs = FUNC11(pdev, IORESOURCE_MEM, "nicpm_base");
	if (regs) {
		bgmac->plat.nicpm_base = FUNC6(&pdev->dev,
							       regs);
		if (FUNC0(bgmac->plat.nicpm_base))
			return FUNC1(bgmac->plat.nicpm_base);
	}

	bgmac->read = platform_bgmac_read;
	bgmac->write = platform_bgmac_write;
	bgmac->idm_read = platform_bgmac_idm_read;
	bgmac->idm_write = platform_bgmac_idm_write;
	bgmac->clk_enabled = platform_bgmac_clk_enabled;
	bgmac->clk_enable = platform_bgmac_clk_enable;
	bgmac->cco_ctl_maskset = platform_bgmac_cco_ctl_maskset;
	bgmac->get_bus_clock = platform_bgmac_get_bus_clock;
	bgmac->cmn_maskset32 = platform_bgmac_cmn_maskset32;
	if (FUNC9(np, "phy-handle", 0)) {
		bgmac->phy_connect = platform_phy_connect;
	} else {
		bgmac->phy_connect = bgmac_phy_connect_direct;
		bgmac->feature_flags |= BGMAC_FEAT_FORCE_SPEED_2500;
	}

	return FUNC3(bgmac);
}