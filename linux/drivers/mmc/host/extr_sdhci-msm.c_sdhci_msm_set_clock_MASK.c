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
struct sdhci_msm_host {unsigned int clk_rate; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 struct sdhci_msm_host* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct sdhci_msm_host *msm_host = FUNC3(pltfm_host);

	if (!clock) {
		msm_host->clk_rate = clock;
		goto out;
	}

	FUNC2(host);

	FUNC1(host, clock);
out:
	FUNC0(host, clock);
}