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
struct mmc_command {unsigned int arg; int flags; int /*<<< orphan*/  opcode; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int MMC_CMD_AC ; 
 int MMC_RSP_R1 ; 
 int MMC_RSP_SPI_R1 ; 
 int /*<<< orphan*/  MMC_SET_BLOCKLEN ; 
 scalar_t__ FUNC0 (struct mmc_card*) ; 
 scalar_t__ FUNC1 (struct mmc_card*) ; 
 scalar_t__ FUNC2 (struct mmc_card*) ; 
 scalar_t__ FUNC3 (struct mmc_card*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mmc_command*,int) ; 

int FUNC5(struct mmc_card *card, unsigned int blocklen)
{
	struct mmc_command cmd = {};

	if (FUNC0(card) || FUNC1(card) ||
	    FUNC2(card) || FUNC3(card))
		return 0;

	cmd.opcode = MMC_SET_BLOCKLEN;
	cmd.arg = blocklen;
	cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
	return FUNC4(card->host, &cmd, 5);
}