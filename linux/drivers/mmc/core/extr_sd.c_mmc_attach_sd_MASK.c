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
typedef  int u32 ;
struct mmc_host {int /*<<< orphan*/ * card; scalar_t__ ocr_avail_sd; scalar_t__ ocr_avail; int /*<<< orphan*/  claimed; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 scalar_t__ FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mmc_host*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmc_sd_ops ; 
 int FUNC11 (struct mmc_host*,int) ; 
 int FUNC12 (struct mmc_host*,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (struct mmc_host*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC15(struct mmc_host *host)
{
	int err;
	u32 ocr, rocr;

	FUNC0(!host->claimed);

	err = FUNC12(host, 0, &ocr);
	if (err)
		return err;

	FUNC2(host, &mmc_sd_ops);
	if (host->ocr_avail_sd)
		host->ocr_avail = host->ocr_avail_sd;

	/*
	 * We need to get OCR a different way for SPI.
	 */
	if (FUNC6(host)) {
		FUNC5(host);

		err = FUNC13(host, 0, &ocr);
		if (err)
			goto err;
	}

	/*
	 * Some SD cards claims an out of spec VDD voltage range. Let's treat
	 * these bits as being in-valid and especially also bit7.
	 */
	ocr &= ~0x7FFF;

	rocr = FUNC11(host, ocr);

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
	err = FUNC10(host, rocr, NULL);
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
	host->card = NULL;
	FUNC3(host);
err:
	FUNC4(host);

	FUNC14("%s: error %d whilst initialising SD card\n",
		FUNC7(host), err);

	return err;
}