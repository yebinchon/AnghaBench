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
typedef  int /*<<< orphan*/  u8 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {scalar_t__ is_tuning; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 struct sdhci_omap_host* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, u8 mask)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_omap_host *omap_host = FUNC0(pltfm_host);

	/* Don't reset data lines during tuning operation */
	if (omap_host->is_tuning)
		mask &= ~SDHCI_RESET_DATA;

	FUNC2(host, mask);
}