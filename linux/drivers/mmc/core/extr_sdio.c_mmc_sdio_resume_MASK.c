#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mmc_host {int caps; int caps2; int /*<<< orphan*/  pm_flags; int /*<<< orphan*/  sdio_irq_work; int /*<<< orphan*/  sdio_irq_thread; scalar_t__ sdio_irqs; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  ocr; } ;

/* Variables and functions */
 int MMC_CAP2_SDIO_IRQ_NOTHREAD ; 
 int MMC_CAP_POWER_OFF_CARD ; 
 int MMC_CAP_SDIO_IRQ ; 
 int /*<<< orphan*/  MMC_PM_KEEP_POWER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  system_wq ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mmc_host *host)
{
	int err = 0;

	/* Basic card reinitialization. */
	FUNC3(host);

	/*
	 * Restore power and reinitialize the card when needed. Note that a
	 * removable card is checked from a detect work later on in the resume
	 * process.
	 */
	if (!FUNC1(host)) {
		FUNC4(host, host->card->ocr);
		/*
		 * Tell runtime PM core we just powered up the card,
		 * since it still believes the card is powered off.
		 * Note that currently runtime PM is only enabled
		 * for SDIO cards that are MMC_CAP_POWER_OFF_CARD
		 */
		if (host->caps & MMC_CAP_POWER_OFF_CARD) {
			FUNC7(&host->card->dev);
			FUNC9(&host->card->dev);
			FUNC8(&host->card->dev);
		}
		err = FUNC6(host);
	} else if (FUNC2(host)) {
		/* We may have switched to 1-bit mode during suspend */
		err = FUNC11(host->card);
	}

	if (err)
		goto out;

	/* Allow SDIO IRQs to be processed again. */
	FUNC0(host->card);

	if (host->sdio_irqs) {
		if (!(host->caps2 & MMC_CAP2_SDIO_IRQ_NOTHREAD))
			FUNC12(host->sdio_irq_thread);
		else if (host->caps & MMC_CAP_SDIO_IRQ)
			FUNC10(system_wq, &host->sdio_irq_work, 0);
	}

out:
	FUNC5(host);

	host->pm_flags &= ~MMC_PM_KEEP_POWER;
	return err;
}