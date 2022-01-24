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
struct sdhci_am654_data {int otap_del_sel; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int OTAPDLYENA_MASK ; 
 int OTAPDLYENA_SHIFT ; 
 int OTAPDLYSEL_MASK ; 
 int OTAPDLYSEL_SHIFT ; 
 int /*<<< orphan*/  PHY_CTRL4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct sdhci_am654_data* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host,
				       unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_am654_data *sdhci_am654 = FUNC1(pltfm_host);
	int val, mask;

	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
	val = (1 << OTAPDLYENA_SHIFT) |
	      (sdhci_am654->otap_del_sel << OTAPDLYSEL_SHIFT);
	FUNC0(sdhci_am654->base, PHY_CTRL4, mask, val);

	FUNC3(host, clock);
}