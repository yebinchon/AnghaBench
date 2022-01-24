#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {TYPE_1__* bulk_clks; } ;
struct sdhci_host {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULONG_MAX ; 
 unsigned int FUNC0 (struct clk*,int /*<<< orphan*/ ) ; 
 struct sdhci_msm_host* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static unsigned int FUNC3(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_msm_host *msm_host = FUNC1(pltfm_host);
	struct clk *core_clk = msm_host->bulk_clks[0].clk;

	return FUNC0(core_clk, ULONG_MAX);
}