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
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 unsigned long SYSCTL_CLKD_MASK ; 
 unsigned long SYSCTL_CLKD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,unsigned long) ; 
 unsigned long FUNC1 (struct sdhci_pltfm_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_omap_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_omap_host*) ; 
 struct sdhci_omap_host* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host, unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_omap_host *omap_host = FUNC4(pltfm_host);
	unsigned long clkdiv;

	FUNC3(omap_host);

	if (!clock)
		return;

	clkdiv = FUNC1(pltfm_host, clock);
	clkdiv = (clkdiv & SYSCTL_CLKD_MASK) << SYSCTL_CLKD_SHIFT;
	FUNC0(host, clkdiv);

	FUNC2(omap_host);
}