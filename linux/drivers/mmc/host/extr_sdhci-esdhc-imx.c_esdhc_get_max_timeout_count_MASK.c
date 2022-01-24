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

/* Variables and functions */
 scalar_t__ FUNC0 (struct pltfm_imx_data*) ; 
 struct pltfm_imx_data* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static unsigned int FUNC3(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct pltfm_imx_data *imx_data = FUNC1(pltfm_host);

	/* Doc Erratum: the uSDHC actual maximum timeout count is 1 << 29 */
	return FUNC0(imx_data) ? 1 << 29 : 1 << 27;
}