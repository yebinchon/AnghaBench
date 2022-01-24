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
struct sdhci_pci_slot {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;
struct intel_host {int drv_strength; } ;

/* Variables and functions */
 struct sdhci_host* FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_host* FUNC1 (struct sdhci_pci_slot*) ; 
 struct sdhci_pci_slot* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card,
				       unsigned int max_dtr, int host_drv,
				       int card_drv, int *drv_type)
{
	struct sdhci_host *host = FUNC0(card->host);
	struct sdhci_pci_slot *slot = FUNC2(host);
	struct intel_host *intel_host = FUNC1(slot);

	return intel_host->drv_strength;
}