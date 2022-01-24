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
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  ocr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct mmc_host*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *host)
{
	int ret;

	/*
	 * Reset the card by performing the same steps that are taken by
	 * mmc_rescan_try_freq() and mmc_attach_sdio() during a "normal" probe.
	 *
	 * sdio_reset() is technically not needed. Having just powered up the
	 * hardware, it should already be in reset state. However, some
	 * platforms (such as SD8686 on OLPC) do not instantly cut power,
	 * meaning that a reset is required when restoring power soon after
	 * powering off. It is harmless in other cases.
	 *
	 * The CMD5 reset (mmc_send_io_op_cond()), according to the SDIO spec,
	 * is not necessary for non-removable cards. However, it is required
	 * for OLPC SD8686 (which expects a [CMD5,5,3,7] init sequence), and
	 * harmless in other situations.
	 *
	 */

	FUNC4(host);
	FUNC0(host);
	FUNC2(host, host->card->ocr);

	ret = FUNC3(host, 0, NULL);
	if (ret)
		return ret;

	return FUNC1(host, host->card->ocr, host->card);
}