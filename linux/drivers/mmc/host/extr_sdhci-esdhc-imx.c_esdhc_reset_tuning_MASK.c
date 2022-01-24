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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct pltfm_imx_data {TYPE_1__* socdata; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ESDHC_FLAG_MAN_TUNING ; 
 int ESDHC_FLAG_STD_TUNING ; 
 scalar_t__ ESDHC_MIX_CTRL ; 
 int /*<<< orphan*/  ESDHC_MIX_CTRL_FBCLK_SEL ; 
 int /*<<< orphan*/  ESDHC_MIX_CTRL_SMPCLK_SEL ; 
 scalar_t__ ESDHC_TUNE_CTRL_STATUS ; 
 scalar_t__ SDHCI_AUTO_CMD_STATUS ; 
 scalar_t__ FUNC0 (struct pltfm_imx_data*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct pltfm_imx_data* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct pltfm_imx_data *imx_data = FUNC2(pltfm_host);
	u32 ctrl;

	/* Reset the tuning circuit */
	if (FUNC0(imx_data)) {
		if (imx_data->socdata->flags & ESDHC_FLAG_MAN_TUNING) {
			ctrl = FUNC1(host->ioaddr + ESDHC_MIX_CTRL);
			ctrl &= ~ESDHC_MIX_CTRL_SMPCLK_SEL;
			ctrl &= ~ESDHC_MIX_CTRL_FBCLK_SEL;
			FUNC4(ctrl, host->ioaddr + ESDHC_MIX_CTRL);
			FUNC4(0, host->ioaddr + ESDHC_TUNE_CTRL_STATUS);
		} else if (imx_data->socdata->flags & ESDHC_FLAG_STD_TUNING) {
			ctrl = FUNC1(host->ioaddr + SDHCI_AUTO_CMD_STATUS);
			ctrl &= ~ESDHC_MIX_CTRL_SMPCLK_SEL;
			FUNC4(ctrl, host->ioaddr + SDHCI_AUTO_CMD_STATUS);
		}
	}
}