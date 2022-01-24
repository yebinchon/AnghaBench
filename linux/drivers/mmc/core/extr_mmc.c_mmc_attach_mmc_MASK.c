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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {int /*<<< orphan*/ * card; scalar_t__ ocr_avail_mmc; scalar_t__ ocr_avail; int /*<<< orphan*/  claimed; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMC_BUSMODE_OPENDRAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 scalar_t__ FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmc_ops ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mmc_host*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC15(struct mmc_host *host)
{
	int err;
	u32 ocr, rocr;

	FUNC0(!host->claimed);

	/* Set correct bus mode for MMC before attempting attach */
	if (!FUNC5(host))
		FUNC12(host, MMC_BUSMODE_OPENDRAIN);

	err = FUNC11(host, 0, &ocr);
	if (err)
		return err;

	FUNC2(host, &mmc_ops);
	if (host->ocr_avail_mmc)
		host->ocr_avail = host->ocr_avail_mmc;

	/*
	 * We need to get OCR a different way for SPI.
	 */
	if (FUNC5(host)) {
		err = FUNC13(host, 1, &ocr);
		if (err)
			goto err;
	}

	rocr = FUNC10(host, ocr);

	/*
	 * Can we support the voltage of the card?
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

	FUNC8(host);
	err = FUNC1(host->card);
	if (err)
		goto remove_card;

	FUNC3(host);
	return 0;

remove_card:
	FUNC9(host->card);
	FUNC3(host);
	host->card = NULL;
err:
	FUNC4(host);

	FUNC14("%s: error %d whilst initialising MMC card\n",
		FUNC6(host), err);

	return err;
}