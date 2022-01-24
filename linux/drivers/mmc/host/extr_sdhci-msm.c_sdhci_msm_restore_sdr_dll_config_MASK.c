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
struct sdhci_msm_host {int /*<<< orphan*/  saved_tuning_phase; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 struct sdhci_msm_host* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC5(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct sdhci_msm_host *msm_host = FUNC3(pltfm_host);
	int ret;

	/*
	 * SDR DLL comes into picture only for timing modes which needs
	 * tuning.
	 */
	if (!FUNC2(host))
		return 0;

	/* Reset the tuning block */
	ret = FUNC1(host);
	if (ret)
		return ret;

	/* Restore the tuning block */
	ret = FUNC0(host, msm_host->saved_tuning_phase);

	return ret;
}