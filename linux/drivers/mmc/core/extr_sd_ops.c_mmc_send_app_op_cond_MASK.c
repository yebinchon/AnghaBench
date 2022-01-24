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
struct mmc_host {int dummy; } ;
struct mmc_command {int arg; int flags; int* resp; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int MMC_CARD_BUSY ; 
 int MMC_CMD_BCR ; 
 int MMC_RSP_R3 ; 
 int MMC_RSP_SPI_R1 ; 
 int R1_SPI_IDLE ; 
 int /*<<< orphan*/  SD_APP_OP_COND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*,int /*<<< orphan*/ *,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct mmc_host *host, u32 ocr, u32 *rocr)
{
	struct mmc_command cmd = {};
	int i, err = 0;

	cmd.opcode = SD_APP_OP_COND;
	if (FUNC1(host))
		cmd.arg = ocr & (1 << 30); /* SPI only defines one bit */
	else
		cmd.arg = ocr;
	cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R3 | MMC_CMD_BCR;

	for (i = 100; i; i--) {
		err = FUNC3(host, NULL, &cmd);
		if (err)
			break;

		/* if we're just probing, do a single pass */
		if (ocr == 0)
			break;

		/* otherwise wait until reset completes */
		if (FUNC1(host)) {
			if (!(cmd.resp[0] & R1_SPI_IDLE))
				break;
		} else {
			if (cmd.resp[0] & MMC_CARD_BUSY)
				break;
		}

		err = -ETIMEDOUT;

		FUNC0(10);
	}

	if (!i)
		FUNC4("%s: card never left busy state\n", FUNC2(host));

	if (rocr && !FUNC1(host))
		*rocr = cmd.resp[0];

	return err;
}