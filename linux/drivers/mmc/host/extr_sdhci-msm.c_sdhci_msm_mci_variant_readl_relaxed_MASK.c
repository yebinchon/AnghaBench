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
typedef  scalar_t__ u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {scalar_t__ core_mem; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct sdhci_msm_host* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static u32 FUNC3(struct sdhci_host *host,
		u32 offset)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_msm_host *msm_host = FUNC1(pltfm_host);

	return FUNC0(msm_host->core_mem + offset);
}