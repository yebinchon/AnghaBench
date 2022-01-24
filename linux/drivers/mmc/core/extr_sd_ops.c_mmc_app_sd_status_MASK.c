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
struct scatterlist {int dummy; } ;
struct mmc_request {struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int /*<<< orphan*/  flags; } ;
struct mmc_command {int flags; int error; scalar_t__ arg; int /*<<< orphan*/  opcode; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int MMC_CMD_ADTC ; 
 int /*<<< orphan*/  MMC_DATA_READ ; 
 int MMC_RSP_R1 ; 
 int MMC_RSP_SPI_R2 ; 
 int /*<<< orphan*/  SD_APP_SD_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_data*,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,void*,int) ; 

int FUNC4(struct mmc_card *card, void *ssr)
{
	int err;
	struct mmc_request mrq = {};
	struct mmc_command cmd = {};
	struct mmc_data data = {};
	struct scatterlist sg;

	/* NOTE: caller guarantees ssr is heap-allocated */

	err = FUNC0(card->host, card);
	if (err)
		return err;

	mrq.cmd = &cmd;
	mrq.data = &data;

	cmd.opcode = SD_APP_SD_STATUS;
	cmd.arg = 0;
	cmd.flags = MMC_RSP_SPI_R2 | MMC_RSP_R1 | MMC_CMD_ADTC;

	data.blksz = 64;
	data.blocks = 1;
	data.flags = MMC_DATA_READ;
	data.sg = &sg;
	data.sg_len = 1;

	FUNC3(&sg, ssr, 64);

	FUNC1(&data, card);

	FUNC2(card->host, &mrq);

	if (cmd.error)
		return cmd.error;
	if (data.error)
		return data.error;

	return 0;
}