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
struct mmc_data {int blocks; unsigned int blksz; int flags; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; scalar_t__ bytes_xfered; } ;
struct mmc_command {unsigned int opcode; int arg; struct mmc_data* data; } ;
struct meson_host {unsigned int bounce_buf_size; int bounce_dma_addr; scalar_t__ regs; int /*<<< orphan*/  bounce_buf; struct mmc_command* cmd; } ;

/* Variables and functions */
 int CMD_CFG_BLOCK_MODE ; 
 int /*<<< orphan*/  CMD_CFG_CMD_INDEX_MASK ; 
 int CMD_CFG_DATA_IO ; 
 int CMD_CFG_DATA_WR ; 
 int CMD_CFG_END_OF_CHAIN ; 
 int CMD_CFG_ERROR ; 
 int /*<<< orphan*/  CMD_CFG_LENGTH_MASK ; 
 int CMD_CFG_OWNER ; 
 int /*<<< orphan*/  CMD_CFG_TIMEOUT_MASK ; 
 int CMD_DATA_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int MMC_DATA_WRITE ; 
 scalar_t__ SD_EMMC_CMD_ARG ; 
 scalar_t__ SD_EMMC_CMD_CFG ; 
 scalar_t__ SD_EMMC_CMD_DAT ; 
 scalar_t__ SD_EMMC_CMD_RSP ; 
 int /*<<< orphan*/  SD_EMMC_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_command*,int*) ; 
 struct meson_host* FUNC10 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct mmc_host *mmc, struct mmc_command *cmd)
{
	struct meson_host *host = FUNC10(mmc);
	struct mmc_data *data = cmd->data;
	u32 cmd_cfg = 0, cmd_data = 0;
	unsigned int xfer_bytes = 0;

	/* Setup descriptors */
	FUNC2();

	host->cmd = cmd;

	cmd_cfg |= FUNC0(CMD_CFG_CMD_INDEX_MASK, cmd->opcode);
	cmd_cfg |= CMD_CFG_OWNER;  /* owned by CPU */
	cmd_cfg |= CMD_CFG_ERROR; /* stop in case of error */

	FUNC9(cmd, &cmd_cfg);

	/* data? */
	if (data) {
		data->bytes_xfered = 0;
		cmd_cfg |= CMD_CFG_DATA_IO;
		cmd_cfg |= FUNC0(CMD_CFG_TIMEOUT_MASK,
				      FUNC4(FUNC7(data)));

		if (FUNC5(data)) {
			FUNC6(mmc, cmd_cfg);
			return;
		}

		if (data->blocks > 1) {
			cmd_cfg |= CMD_CFG_BLOCK_MODE;
			cmd_cfg |= FUNC0(CMD_CFG_LENGTH_MASK,
					      data->blocks);
			FUNC8(mmc, data->blksz);
		} else {
			cmd_cfg |= FUNC0(CMD_CFG_LENGTH_MASK, data->blksz);
		}

		xfer_bytes = data->blksz * data->blocks;
		if (data->flags & MMC_DATA_WRITE) {
			cmd_cfg |= CMD_CFG_DATA_WR;
			FUNC1(xfer_bytes > host->bounce_buf_size);
			FUNC11(data->sg, data->sg_len,
					  host->bounce_buf, xfer_bytes);
			FUNC3();
		}

		cmd_data = host->bounce_dma_addr & CMD_DATA_MASK;
	} else {
		cmd_cfg |= FUNC0(CMD_CFG_TIMEOUT_MASK,
				      FUNC4(SD_EMMC_CMD_TIMEOUT));
	}

	/* Last descriptor */
	cmd_cfg |= CMD_CFG_END_OF_CHAIN;
	FUNC13(cmd_cfg, host->regs + SD_EMMC_CMD_CFG);
	FUNC13(cmd_data, host->regs + SD_EMMC_CMD_DAT);
	FUNC13(0, host->regs + SD_EMMC_CMD_RSP);
	FUNC12(); /* ensure descriptor is written before kicked */
	FUNC13(cmd->arg, host->regs + SD_EMMC_CMD_ARG);
}