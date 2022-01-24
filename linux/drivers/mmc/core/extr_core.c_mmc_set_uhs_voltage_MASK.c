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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {TYPE_1__* ops; } ;
struct mmc_command {int flags; int* resp; scalar_t__ arg; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {scalar_t__ (* card_busy ) (struct mmc_host*) ;int /*<<< orphan*/  start_signal_voltage_switch; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int EPERM ; 
 int MMC_CMD_AC ; 
 int MMC_RSP_R1 ; 
 int R1_ERROR ; 
 int /*<<< orphan*/  SD_SWITCH_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mmc_host*,struct mmc_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mmc_host*) ; 
 scalar_t__ FUNC9 (struct mmc_host*) ; 

int FUNC10(struct mmc_host *host, u32 ocr)
{
	struct mmc_command cmd = {};
	int err = 0;

	/*
	 * If we cannot switch voltages, return failure so the caller
	 * can continue without UHS mode
	 */
	if (!host->ops->start_signal_voltage_switch)
		return -EPERM;
	if (!host->ops->card_busy)
		FUNC7("%s: cannot verify signal voltage switch\n",
			FUNC3(host));

	cmd.opcode = SD_SWITCH_VOLTAGE;
	cmd.arg = 0;
	cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;

	err = FUNC5(host, &cmd, 0);
	if (err)
		return err;

	if (!FUNC1(host) && (cmd.resp[0] & R1_ERROR))
		return -EIO;

	/*
	 * The card should drive cmd and dat[0:3] low immediately
	 * after the response of cmd11, but wait 1 ms to be sure
	 */
	FUNC0(1);
	if (host->ops->card_busy && !host->ops->card_busy(host)) {
		err = -EAGAIN;
		goto power_cycle;
	}

	if (FUNC2(host)) {
		/*
		 * Voltages may not have been switched, but we've already
		 * sent CMD11, so a power cycle is required anyway
		 */
		err = -EAGAIN;
		goto power_cycle;
	}

	/* Wait for at least 1 ms according to spec */
	FUNC0(1);

	/*
	 * Failure to switch is indicated by the card holding
	 * dat[0:3] low
	 */
	if (host->ops->card_busy && host->ops->card_busy(host))
		err = -EAGAIN;

power_cycle:
	if (err) {
		FUNC6("%s: Signal voltage switch failed, "
			"power cycling card\n", FUNC3(host));
		FUNC4(host, ocr);
	}

	return err;
}