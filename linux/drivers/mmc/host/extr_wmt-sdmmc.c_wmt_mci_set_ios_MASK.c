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
struct wmt_mci_priv {scalar_t__ sdmmc_base; int /*<<< orphan*/  clk_sdmmc; } ;
struct mmc_ios {scalar_t__ power_mode; int bus_width; int /*<<< orphan*/  clock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int BM_EIGHTBIT_MODE ; 
 int BM_FOURBIT_MODE ; 
 int EXT_EIGHTBIT ; 
#define  MMC_BUS_WIDTH_1 130 
#define  MMC_BUS_WIDTH_4 129 
#define  MMC_BUS_WIDTH_8 128 
 scalar_t__ MMC_POWER_OFF ; 
 scalar_t__ MMC_POWER_UP ; 
 scalar_t__ SDMMC_BUSMODE ; 
 scalar_t__ SDMMC_EXTCTRL ; 
 int /*<<< orphan*/  WMT_SD_POWER_OFF ; 
 int /*<<< orphan*/  WMT_SD_POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wmt_mci_priv* FUNC1 (struct mmc_host*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct wmt_mci_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct wmt_mci_priv *priv;
	u32 busmode, extctrl;

	priv = FUNC1(mmc);

	if (ios->power_mode == MMC_POWER_UP) {
		FUNC3(mmc);

		FUNC4(priv, WMT_SD_POWER_ON);
	}
	if (ios->power_mode == MMC_POWER_OFF)
		FUNC4(priv, WMT_SD_POWER_OFF);

	if (ios->clock != 0)
		FUNC0(priv->clk_sdmmc, ios->clock);

	busmode = FUNC2(priv->sdmmc_base + SDMMC_BUSMODE);
	extctrl = FUNC2(priv->sdmmc_base + SDMMC_EXTCTRL);

	busmode &= ~(BM_EIGHTBIT_MODE | BM_FOURBIT_MODE);
	extctrl &= ~EXT_EIGHTBIT;

	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_8:
		busmode |= BM_EIGHTBIT_MODE;
		extctrl |= EXT_EIGHTBIT;
		break;
	case MMC_BUS_WIDTH_4:
		busmode |= BM_FOURBIT_MODE;
		break;
	case MMC_BUS_WIDTH_1:
		break;
	}

	FUNC5(busmode, priv->sdmmc_base + SDMMC_BUSMODE);
	FUNC5(extctrl, priv->sdmmc_base + SDMMC_EXTCTRL);
}