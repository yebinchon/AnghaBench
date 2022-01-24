#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int cmdclass; } ;
struct mmc_card {TYPE_3__* host; TYPE_1__ csd; } ;
struct TYPE_7__ {scalar_t__ timing; } ;
struct TYPE_8__ {TYPE_2__ ios; } ;

/* Variables and functions */
 int CCC_SWITCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMC_BUS_WIDTH_4 ; 
 scalar_t__ MMC_TIMING_UHS_DDR50 ; 
 scalar_t__ MMC_TIMING_UHS_SDR104 ; 
 scalar_t__ MMC_TIMING_UHS_SDR50 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_card*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mmc_card*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mmc_card*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mmc_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mmc_card*) ; 

__attribute__((used)) static int FUNC12(struct mmc_card *card)
{
	int err;
	u8 *status;

	if (!(card->csd.cmdclass & CCC_SWITCH))
		return 0;

	status = FUNC1(64, GFP_KERNEL);
	if (!status)
		return -ENOMEM;

	/* Set 4-bit bus width */
	err = FUNC2(card, MMC_BUS_WIDTH_4);
	if (err)
		goto out;

	FUNC6(card->host, MMC_BUS_WIDTH_4);

	/*
	 * Select the bus speed mode depending on host
	 * and card capability.
	 */
	FUNC11(card);

	/* Set the driver strength for the card */
	err = FUNC8(card, status);
	if (err)
		goto out;

	/* Set current limit for the card */
	err = FUNC10(card, status);
	if (err)
		goto out;

	/* Set bus speed mode of the card */
	err = FUNC9(card, status);
	if (err)
		goto out;

	/*
	 * SPI mode doesn't define CMD19 and tuning is only valid for SDR50 and
	 * SDR104 mode SD-cards. Note that tuning is mandatory for SDR104.
	 */
	if (!FUNC4(card->host) &&
		(card->host->ios.timing == MMC_TIMING_UHS_SDR50 ||
		 card->host->ios.timing == MMC_TIMING_UHS_DDR50 ||
		 card->host->ios.timing == MMC_TIMING_UHS_SDR104)) {
		err = FUNC3(card);

		/*
		 * As SD Specifications Part1 Physical Layer Specification
		 * Version 3.01 says, CMD19 tuning is available for unlocked
		 * cards in transfer state of 1.8V signaling mode. The small
		 * difference between v3.00 and 3.01 spec means that CMD19
		 * tuning is also available for DDR50 mode.
		 */
		if (err && card->host->ios.timing == MMC_TIMING_UHS_DDR50) {
			FUNC7("%s: ddr50 tuning failed\n",
				FUNC5(card->host));
			err = 0;
		}
	}

out:
	FUNC0(status);

	return err;
}