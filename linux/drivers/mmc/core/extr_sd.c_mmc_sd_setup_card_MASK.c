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
struct mmc_host {int dummy; } ;
struct mmc_card {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 int FUNC2 (struct mmc_card*) ; 
 scalar_t__ FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_card*) ; 
 int FUNC6 (struct mmc_card*) ; 
 int FUNC7 (struct mmc_card*) ; 
 int FUNC8 (struct mmc_host*) ; 
 int FUNC9 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_spi_crc ; 

int FUNC11(struct mmc_host *host, struct mmc_card *card,
	bool reinit)
{
	int err;

	if (!reinit) {
		/*
		 * Fetch SCR from card.
		 */
		err = FUNC0(card);
		if (err)
			return err;

		err = FUNC2(card);
		if (err)
			return err;

		/*
		 * Fetch and process SD Status register.
		 */
		err = FUNC6(card);
		if (err)
			return err;

		/* Erase init depends on CSD and SSR */
		FUNC5(card);

		/*
		 * Fetch switch information from card.
		 */
		err = FUNC7(card);
		if (err)
			return err;
	}

	/*
	 * For SPI, enable CRC as appropriate.
	 * This CRC enable is located AFTER the reading of the
	 * card registers because some SDHC cards are not able
	 * to provide valid CRCs for non-512-byte blocks.
	 */
	if (FUNC3(host)) {
		err = FUNC9(host, use_spi_crc);
		if (err)
			return err;
	}

	/*
	 * Check if read-only switch is active.
	 */
	if (!reinit) {
		int ro = FUNC8(host);

		if (ro < 0) {
			FUNC10("%s: host does not support reading read-only switch, assuming write-enable\n",
				FUNC4(host));
		} else if (ro > 0) {
			FUNC1(card);
		}
	}

	return 0;
}