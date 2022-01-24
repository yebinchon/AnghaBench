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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct pltfm_imx_data {struct pinctrl_state* pinctrl; struct pinctrl_state* pins_default; struct pinctrl_state* pins_200mhz; struct pinctrl_state* pins_100mhz; } ;
struct pinctrl_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
#define  MMC_TIMING_MMC_HS200 132 
#define  MMC_TIMING_MMC_HS400 131 
#define  MMC_TIMING_UHS_DDR50 130 
#define  MMC_TIMING_UHS_SDR104 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pinctrl_state*,struct pinctrl_state*) ; 
 struct pltfm_imx_data* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC6(struct sdhci_host *host,
						unsigned int uhs)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct pltfm_imx_data *imx_data = FUNC4(pltfm_host);
	struct pinctrl_state *pinctrl;

	FUNC1(FUNC2(host->mmc), "change pinctrl state for uhs %d\n", uhs);

	if (FUNC0(imx_data->pinctrl) ||
		FUNC0(imx_data->pins_default) ||
		FUNC0(imx_data->pins_100mhz) ||
		FUNC0(imx_data->pins_200mhz))
		return -EINVAL;

	switch (uhs) {
	case MMC_TIMING_UHS_SDR50:
	case MMC_TIMING_UHS_DDR50:
		pinctrl = imx_data->pins_100mhz;
		break;
	case MMC_TIMING_UHS_SDR104:
	case MMC_TIMING_MMC_HS200:
	case MMC_TIMING_MMC_HS400:
		pinctrl = imx_data->pins_200mhz;
		break;
	default:
		/* back to default state for other legacy timing */
		pinctrl = imx_data->pins_default;
	}

	return FUNC3(imx_data->pinctrl, pinctrl);
}