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
struct sdhci_host {scalar_t__ ioaddr; int /*<<< orphan*/  mmc; } ;
struct esdhc_platform_data {int wp_type; } ;
struct pltfm_imx_data {struct esdhc_platform_data boarddata; } ;

/* Variables and functions */
 unsigned int ENOSYS ; 
#define  ESDHC_WP_CONTROLLER 130 
#define  ESDHC_WP_GPIO 129 
#define  ESDHC_WP_NONE 128 
 scalar_t__ SDHCI_PRESENT_STATE ; 
 int SDHCI_WRITE_PROTECT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct pltfm_imx_data* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 

__attribute__((used)) static unsigned int FUNC4(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct pltfm_imx_data *imx_data = FUNC2(pltfm_host);
	struct esdhc_platform_data *boarddata = &imx_data->boarddata;

	switch (boarddata->wp_type) {
	case ESDHC_WP_GPIO:
		return FUNC0(host->mmc);
	case ESDHC_WP_CONTROLLER:
		return !(FUNC1(host->ioaddr + SDHCI_PRESENT_STATE) &
			       SDHCI_WRITE_PROTECT);
	case ESDHC_WP_NONE:
		break;
	}

	return -ENOSYS;
}