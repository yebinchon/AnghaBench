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
struct sdhci_host {int /*<<< orphan*/ * align_buffer; int /*<<< orphan*/ * adma_table; int /*<<< orphan*/  align_addr; scalar_t__ adma_table_sz; scalar_t__ align_buffer_sz; int /*<<< orphan*/  complete_wq; int /*<<< orphan*/  data_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC15 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC18(struct sdhci_host *host, int dead)
{
	struct mmc_host *mmc = host->mmc;
	unsigned long flags;

	if (dead) {
		FUNC16(&host->lock, flags);

		host->flags |= SDHCI_DEVICE_DEAD;

		if (FUNC13(host)) {
			FUNC8("%s: Controller removed during "
				" transfer!\n", FUNC6(mmc));
			FUNC12(host, -ENOMEDIUM);
		}

		FUNC17(&host->lock, flags);
	}

	FUNC10(host);

	FUNC7(mmc);

	FUNC14(host);

	if (!dead)
		FUNC11(host, SDHCI_RESET_ALL);

	FUNC15(host, 0, SDHCI_INT_ENABLE);
	FUNC15(host, 0, SDHCI_SIGNAL_ENABLE);
	FUNC4(host->irq, host);

	FUNC1(&host->timer);
	FUNC1(&host->data_timer);

	FUNC2(host->complete_wq);

	if (!FUNC0(mmc->supply.vqmmc))
		FUNC9(mmc->supply.vqmmc);

	if (host->align_buffer)
		FUNC3(FUNC5(mmc), host->align_buffer_sz +
				  host->adma_table_sz, host->align_buffer,
				  host->align_addr);

	host->adma_table = NULL;
	host->align_buffer = NULL;
}