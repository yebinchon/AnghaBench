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
struct sdhci_pltfm_host {unsigned int clock; scalar_t__ clk; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sdhci_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 

__attribute__((used)) static unsigned int FUNC2(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);

	if (pltfm_host->clk)
		return FUNC0(host);
	else
		return pltfm_host->clock;
}