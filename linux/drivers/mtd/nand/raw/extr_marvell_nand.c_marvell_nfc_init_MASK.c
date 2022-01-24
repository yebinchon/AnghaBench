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
struct regmap {int dummy; } ;
struct marvell_nfc {TYPE_2__* caps; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_nfcv2; scalar_t__ need_system_controller; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENCONF_CLK_GATING_CTRL ; 
 int /*<<< orphan*/  GENCONF_CLK_GATING_CTRL_ND_GATE ; 
 int /*<<< orphan*/  GENCONF_ND_CLK_CTRL ; 
 int /*<<< orphan*/  GENCONF_ND_CLK_CTRL_EN ; 
 int /*<<< orphan*/  GENCONF_SOC_DEVICE_MUX ; 
 int GENCONF_SOC_DEVICE_MUX_ECC_CLK_RST ; 
 int GENCONF_SOC_DEVICE_MUX_ECC_CORE_RST ; 
 int GENCONF_SOC_DEVICE_MUX_NFC_EN ; 
 int GENCONF_SOC_DEVICE_MUX_NFC_INT_EN ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct marvell_nfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct marvell_nfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 struct regmap* FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct marvell_nfc *nfc)
{
	struct device_node *np = nfc->dev->of_node;

	/*
	 * Some SoCs like A7k/A8k need to enable manually the NAND
	 * controller, gated clocks and reset bits to avoid being bootloader
	 * dependent. This is done through the use of the System Functions
	 * registers.
	 */
	if (nfc->caps->need_system_controller) {
		struct regmap *sysctrl_base =
			FUNC6(np,
							"marvell,system-controller");

		if (FUNC0(sysctrl_base))
			return FUNC1(sysctrl_base);

		FUNC5(sysctrl_base, GENCONF_SOC_DEVICE_MUX,
			     GENCONF_SOC_DEVICE_MUX_NFC_EN |
			     GENCONF_SOC_DEVICE_MUX_ECC_CLK_RST |
			     GENCONF_SOC_DEVICE_MUX_ECC_CORE_RST |
			     GENCONF_SOC_DEVICE_MUX_NFC_INT_EN);

		FUNC4(sysctrl_base, GENCONF_CLK_GATING_CTRL,
				   GENCONF_CLK_GATING_CTRL_ND_GATE,
				   GENCONF_CLK_GATING_CTRL_ND_GATE);

		FUNC4(sysctrl_base, GENCONF_ND_CLK_CTRL,
				   GENCONF_ND_CLK_CTRL_EN,
				   GENCONF_ND_CLK_CTRL_EN);
	}

	/* Configure the DMA if appropriate */
	if (!nfc->caps->is_nfcv2)
		FUNC2(nfc);

	FUNC3(nfc);

	return 0;
}