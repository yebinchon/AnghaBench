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
struct sdhci_host {int quirks; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int SAMPLE_COUNT ; 
 int SDHCI_QUIRK_UNSTABLE_RO_DETECT ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC0(mmc);
	int i, ro_count;

	if (!(host->quirks & SDHCI_QUIRK_UNSTABLE_RO_DETECT))
		return FUNC2(host);

	ro_count = 0;
	for (i = 0; i < SAMPLE_COUNT; i++) {
		if (FUNC2(host)) {
			if (++ro_count > SAMPLE_COUNT / 2)
				return 1;
		}
		FUNC1(30);
	}
	return 0;
}