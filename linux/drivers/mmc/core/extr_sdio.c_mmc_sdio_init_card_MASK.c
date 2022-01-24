#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {scalar_t__ signal_voltage; } ;
struct mmc_host {int caps2; struct mmc_card* card; TYPE_6__ ios; TYPE_1__* ops; int /*<<< orphan*/  claimed; } ;
struct TYPE_11__ {scalar_t__ sd3_bus_mode; } ;
struct TYPE_10__ {int /*<<< orphan*/ * type; } ;
struct TYPE_9__ {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  max_dtr; } ;
struct TYPE_8__ {scalar_t__ high_speed; } ;
struct mmc_card {scalar_t__ type; int quirks; int ocr; int /*<<< orphan*/  host; TYPE_5__ sw_caps; TYPE_4__ dev; TYPE_3__ cis; TYPE_2__ cccr; int /*<<< orphan*/  rca; int /*<<< orphan*/  raw_cid; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* init_card ) (struct mmc_host*,struct mmc_card*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct mmc_card*) ; 
 int MMC_CAP2_AVOID_3_3V ; 
 int MMC_QUIRK_NONSTD_SDIO ; 
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ; 
 int /*<<< orphan*/  MMC_TIMING_SD_HS ; 
 scalar_t__ MMC_TYPE_SDIO ; 
 scalar_t__ MMC_TYPE_SD_COMBO ; 
 int FUNC1 (struct mmc_card*) ; 
 int R4_18V_PRESENT ; 
 int R4_MEMORY_PRESENT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mmc_card* FUNC4 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 scalar_t__ FUNC8 (struct mmc_host*) ; 
 scalar_t__ FUNC9 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct mmc_card*) ; 
 scalar_t__ FUNC12 (struct mmc_host*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mmc_host*,struct mmc_card*) ; 
 int FUNC14 (struct mmc_host*,struct mmc_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mmc_card*) ; 
 int FUNC16 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC17 (struct mmc_host*,struct mmc_card*) ; 
 int FUNC18 (struct mmc_card*) ; 
 int FUNC19 (struct mmc_host*,int,int*) ; 
 int FUNC20 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct mmc_host*,int) ; 
 int FUNC24 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_type ; 
 int FUNC28 (struct mmc_card*) ; 
 int FUNC29 (struct mmc_card*) ; 
 int FUNC30 (struct mmc_card*) ; 
 int /*<<< orphan*/  sdio_fixup_methods ; 
 int FUNC31 (struct mmc_card*,int) ; 
 int FUNC32 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC33 (struct mmc_host*,struct mmc_card*) ; 
 int /*<<< orphan*/  use_spi_crc ; 

__attribute__((used)) static int FUNC34(struct mmc_host *host, u32 ocr,
			      struct mmc_card *oldcard)
{
	struct mmc_card *card;
	int err;
	int retries = 10;
	u32 rocr = 0;
	u32 ocr_card = ocr;

	FUNC2(!host->claimed);

	/* to query card if 1.8V signalling is supported */
	if (FUNC9(host))
		ocr |= R4_18V_PRESENT;

try_again:
	if (!retries) {
		FUNC27("%s: Skipping voltage switch\n", FUNC10(host));
		ocr &= ~R4_18V_PRESENT;
	}

	/*
	 * Inform the card of the voltage
	 */
	err = FUNC19(host, ocr, &rocr);
	if (err)
		goto err;

	/*
	 * For SPI, enable CRC as appropriate.
	 */
	if (FUNC8(host)) {
		err = FUNC24(host, use_spi_crc);
		if (err)
			goto err;
	}

	/*
	 * Allocate card structure.
	 */
	card = FUNC4(host, NULL);
	if (FUNC0(card)) {
		err = FUNC1(card);
		goto err;
	}

	if ((rocr & R4_MEMORY_PRESENT) &&
	    FUNC12(host, ocr & rocr, card->raw_cid, NULL) == 0) {
		card->type = MMC_TYPE_SD_COMBO;

		if (oldcard && (oldcard->type != MMC_TYPE_SD_COMBO ||
		    FUNC3(card->raw_cid, oldcard->raw_cid, sizeof(card->raw_cid)) != 0)) {
			FUNC11(card);
			FUNC25("%s: Perhaps the card was replaced\n",
				FUNC10(host));
			return -ENOENT;
		}
	} else {
		card->type = MMC_TYPE_SDIO;

		if (oldcard && oldcard->type != MMC_TYPE_SDIO) {
			FUNC11(card);
			FUNC25("%s: Perhaps the card was replaced\n",
				FUNC10(host));
			return -ENOENT;
		}
	}

	/*
	 * Call the optional HC's init_card function to handle quirks.
	 */
	if (host->ops->init_card)
		host->ops->init_card(host, card);

	/*
	 * If the host and card support UHS-I mode request the card
	 * to switch to 1.8V signaling level.  No 1.8v signalling if
	 * UHS mode is not enabled to maintain compatibility and some
	 * systems that claim 1.8v signalling in fact do not support
	 * it. Per SDIO spec v3, section 3.1.2, if the voltage is already
	 * 1.8v, the card sets S18A to 0 in the R4 response. So it will
	 * fails to check rocr & R4_18V_PRESENT,  but we still need to
	 * try to init uhs card. sdio_read_cccr will take over this task
	 * to make sure which speed mode should work.
	 */
	if (rocr & ocr & R4_18V_PRESENT) {
		err = FUNC23(host, ocr_card);
		if (err == -EAGAIN) {
			FUNC17(host, card);
			retries--;
			goto try_again;
		} else if (err) {
			ocr &= ~R4_18V_PRESENT;
		}
	}

	/*
	 * For native busses:  set card RCA and quit open drain mode.
	 */
	if (!FUNC8(host)) {
		err = FUNC20(host, &card->rca);
		if (err)
			goto remove;

		/*
		 * Update oldcard with the new RCA received from the SDIO
		 * device -- we're doing this so that it's updated in the
		 * "card" struct when oldcard overwrites that later.
		 */
		if (oldcard)
			oldcard->rca = card->rca;
	}

	/*
	 * Read CSD, before selecting the card
	 */
	if (!oldcard && card->type == MMC_TYPE_SD_COMBO) {
		err = FUNC13(host, card);
		if (err)
			return err;

		FUNC5(card);
	}

	/*
	 * Select card, as all following commands rely on that.
	 */
	if (!FUNC8(host)) {
		err = FUNC18(card);
		if (err)
			goto remove;
	}

	if (card->quirks & MMC_QUIRK_NONSTD_SDIO) {
		/*
		 * This is non-standard SDIO device, meaning it doesn't
		 * have any CIA (Common I/O area) registers present.
		 * It's host's responsibility to fill cccr and cis
		 * structures in init_card().
		 */
		FUNC21(host, card->cis.max_dtr);

		if (card->cccr.high_speed) {
			FUNC22(card->host, MMC_TIMING_SD_HS);
		}

		goto finish;
	}

	/*
	 * Read the common registers. Note that we should try to
	 * validate whether UHS would work or not.
	 */
	err = FUNC31(card, ocr);
	if (err) {
		FUNC17(host, card);
		if (ocr & R4_18V_PRESENT) {
			/* Retry init sequence, but without R4_18V_PRESENT. */
			retries = 0;
			goto try_again;
		} else {
			goto remove;
		}
	}

	/*
	 * Read the common CIS tuples.
	 */
	err = FUNC32(card);
	if (err)
		goto remove;

	if (oldcard) {
		int same = (card->cis.vendor == oldcard->cis.vendor &&
			    card->cis.device == oldcard->cis.device);
		FUNC11(card);
		if (!same) {
			FUNC25("%s: Perhaps the card was replaced\n",
				FUNC10(host));
			return -ENOENT;
		}

		card = oldcard;
	}
	card->ocr = ocr_card;
	FUNC6(card, sdio_fixup_methods);

	if (card->type == MMC_TYPE_SD_COMBO) {
		err = FUNC14(host, card, oldcard != NULL);
		/* handle as SDIO-only card if memory init failed */
		if (err) {
			FUNC7(host);
			if (FUNC8(host))
				/* should not fail, as it worked previously */
				FUNC24(host, use_spi_crc);
			card->type = MMC_TYPE_SDIO;
		} else
			card->dev.type = &sd_type;
	}

	/*
	 * If needed, disconnect card detection pull-up resistor.
	 */
	err = FUNC28(card);
	if (err)
		goto remove;

	/* Initialization sequence for UHS-I cards */
	/* Only if card supports 1.8v and UHS signaling */
	if ((ocr & R4_18V_PRESENT) && card->sw_caps.sd3_bus_mode) {
		err = FUNC16(card);
		if (err)
			goto remove;
	} else {
		/*
		 * Switch to high-speed (if supported).
		 */
		err = FUNC30(card);
		if (err > 0)
			FUNC22(card->host, MMC_TIMING_SD_HS);
		else if (err)
			goto remove;

		/*
		 * Change to the card's maximum speed.
		 */
		FUNC21(host, FUNC15(card));

		/*
		 * Switch to wider bus (if supported).
		 */
		err = FUNC29(card);
		if (err)
			goto remove;
	}

	if (host->caps2 & MMC_CAP2_AVOID_3_3V &&
	    host->ios.signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
		FUNC26("%s: Host failed to negotiate down from 3.3V\n",
			FUNC10(host));
		err = -EINVAL;
		goto remove;
	}
finish:
	if (!oldcard)
		host->card = card;
	return 0;

remove:
	if (!oldcard)
		FUNC11(card);

err:
	return err;
}