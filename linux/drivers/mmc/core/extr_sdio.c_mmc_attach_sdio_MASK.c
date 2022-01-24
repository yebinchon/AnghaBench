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
typedef  int u32 ;
struct mmc_host {int caps; struct mmc_card* card; scalar_t__ ocr_avail_sdio; scalar_t__ ocr_avail; int /*<<< orphan*/  claimed; } ;
struct mmc_card {int /*<<< orphan*/  dev; TYPE_1__** sdio_func; scalar_t__ sdio_funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int MMC_CAP_POWER_OFF_CARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct mmc_host*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmc_sdio_ops ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int FUNC9 (struct mmc_host*,int) ; 
 int FUNC10 (struct mmc_host*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_1__*) ; 
 int FUNC17 (struct mmc_card*,int) ; 

int FUNC18(struct mmc_host *host)
{
	int err, i, funcs;
	u32 ocr, rocr;
	struct mmc_card *card;

	FUNC0(!host->claimed);

	err = FUNC10(host, 0, &ocr);
	if (err)
		return err;

	FUNC2(host, &mmc_sdio_ops);
	if (host->ocr_avail_sdio)
		host->ocr_avail = host->ocr_avail_sdio;


	rocr = FUNC9(host, ocr);

	/*
	 * Can we support the voltage(s) of the card(s)?
	 */
	if (!rocr) {
		err = -EINVAL;
		goto err;
	}

	/*
	 * Detect and init the card.
	 */
	err = FUNC7(host, rocr, NULL);
	if (err)
		goto err;

	card = host->card;

	/*
	 * Enable runtime PM only if supported by host+card+board
	 */
	if (host->caps & MMC_CAP_POWER_OFF_CARD) {
		/*
		 * Do not allow runtime suspend until after SDIO function
		 * devices are added.
		 */
		FUNC12(&card->dev);

		/*
		 * Let runtime PM core know our card is active
		 */
		err = FUNC14(&card->dev);
		if (err)
			goto remove;

		/*
		 * Enable runtime PM for this card
		 */
		FUNC11(&card->dev);
	}

	/*
	 * The number of functions on the card is encoded inside
	 * the ocr.
	 */
	funcs = (ocr & 0x70000000) >> 28;
	card->sdio_funcs = 0;

	/*
	 * Initialize (but don't add) all present functions.
	 */
	for (i = 0; i < funcs; i++, card->sdio_funcs++) {
		err = FUNC17(host->card, i + 1);
		if (err)
			goto remove;

		/*
		 * Enable Runtime PM for this func (if supported)
		 */
		if (host->caps & MMC_CAP_POWER_OFF_CARD)
			FUNC11(&card->sdio_func[i]->dev);
	}

	/*
	 * First add the card to the driver model...
	 */
	FUNC6(host);
	err = FUNC1(host->card);
	if (err)
		goto remove_added;

	/*
	 * ...then the SDIO functions.
	 */
	for (i = 0;i < funcs;i++) {
		err = FUNC16(host->card->sdio_func[i]);
		if (err)
			goto remove_added;
	}

	if (host->caps & MMC_CAP_POWER_OFF_CARD)
		FUNC13(&card->dev);

	FUNC3(host);
	return 0;


remove:
	FUNC6(host);
remove_added:
	/*
	 * The devices are being deleted so it is not necessary to disable
	 * runtime PM. Similarly we also don't pm_runtime_put() the SDIO card
	 * because it needs to be active to remove any function devices that
	 * were probed, and after that it gets deleted.
	 */
	FUNC8(host);
	FUNC3(host);
err:
	FUNC4(host);

	FUNC15("%s: error %d whilst initialising SDIO card\n",
		FUNC5(host), err);

	return err;
}