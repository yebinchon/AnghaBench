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
struct sdhci_host {int dummy; } ;
struct pltfm_imx_data {int dummy; } ;
struct mmc_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESDHC_SYS_CTRL_DTOCV_MASK ; 
 int /*<<< orphan*/  SDHCI_TIMEOUT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pltfm_imx_data*) ; 
 struct pltfm_imx_data* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host, struct mmc_command *cmd)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct pltfm_imx_data *imx_data = FUNC2(pltfm_host);

	/* use maximum timeout counter */
	FUNC0(host, ESDHC_SYS_CTRL_DTOCV_MASK,
			FUNC1(imx_data) ? 0xF : 0xE,
			SDHCI_TIMEOUT_CONTROL);
}