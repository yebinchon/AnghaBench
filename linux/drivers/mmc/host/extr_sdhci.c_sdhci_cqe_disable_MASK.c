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
struct sdhci_host {int cqe_on; int /*<<< orphan*/  lock; int /*<<< orphan*/  ier; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 struct sdhci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct mmc_host *mmc, bool recovery)
{
	struct sdhci_host *host = FUNC1(mmc);
	unsigned long flags;

	FUNC6(&host->lock, flags);

	FUNC5(host);

	host->cqe_on = false;

	if (recovery) {
		FUNC3(host, SDHCI_RESET_CMD);
		FUNC3(host, SDHCI_RESET_DATA);
	}

	FUNC2("%s: sdhci: CQE off, IRQ mask %#x, IRQ status %#x\n",
		 FUNC0(mmc), host->ier,
		 FUNC4(host, SDHCI_INT_STATUS));

	FUNC7(&host->lock, flags);
}