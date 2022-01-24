#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sdhci_host {int quirks2; scalar_t__ data_timeout; int /*<<< orphan*/  mmc; struct mmc_command* data_cmd; struct mmc_command* cmd; } ;
struct mmc_command {scalar_t__ opcode; int flags; int busy_timeout; TYPE_2__* mrq; scalar_t__ data; int /*<<< orphan*/  error; int /*<<< orphan*/  arg; } ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {struct mmc_command* stop; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 unsigned long HZ ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_BUSY ; 
 int MMC_RSP_CRC ; 
 int MMC_RSP_OPCODE ; 
 int MMC_RSP_PRESENT ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ; 
 scalar_t__ MMC_STOP_TRANSMISSION ; 
 int /*<<< orphan*/  SDHCI_ARGUMENT ; 
 int SDHCI_CMD_CRC ; 
 int SDHCI_CMD_DATA ; 
 int SDHCI_CMD_INDEX ; 
 int SDHCI_CMD_INHIBIT ; 
 int SDHCI_CMD_RESP_LONG ; 
 int SDHCI_CMD_RESP_NONE ; 
 int SDHCI_CMD_RESP_SHORT ; 
 int SDHCI_CMD_RESP_SHORT_BUSY ; 
 int /*<<< orphan*/  SDHCI_COMMAND ; 
 int SDHCI_DATA_INHIBIT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 int SDHCI_QUIRK2_STOP_WITH_TC ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_command*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*,TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_host*,struct mmc_command*) ; 
 int FUNC12 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC16(struct sdhci_host *host, struct mmc_command *cmd)
{
	int flags;
	u32 mask;
	unsigned long timeout;

	FUNC2(host->cmd);

	/* Initially, a command has no error */
	cmd->error = 0;

	if ((host->quirks2 & SDHCI_QUIRK2_STOP_WITH_TC) &&
	    cmd->opcode == MMC_STOP_TRANSMISSION)
		cmd->flags |= MMC_RSP_BUSY;

	/* Wait max 10 ms */
	timeout = 10;

	mask = SDHCI_CMD_INHIBIT;
	if (FUNC7(cmd))
		mask |= SDHCI_DATA_INHIBIT;

	/* We shouldn't wait for data inihibit for stop commands, even
	   though they might use busy signaling */
	if (cmd->mrq->data && (cmd == cmd->mrq->data->stop))
		mask &= ~SDHCI_DATA_INHIBIT;

	while (FUNC12(host, SDHCI_PRESENT_STATE) & mask) {
		if (timeout == 0) {
			FUNC6("%s: Controller never released inhibit bit(s).\n",
			       FUNC4(host->mmc));
			FUNC8(host);
			cmd->error = -EIO;
			FUNC9(host, cmd->mrq);
			return;
		}
		timeout--;
		FUNC3(1);
	}

	host->cmd = cmd;
	if (FUNC7(cmd)) {
		FUNC2(host->data_cmd);
		host->data_cmd = cmd;
	}

	FUNC11(host, cmd);

	FUNC14(host, cmd->arg, SDHCI_ARGUMENT);

	FUNC13(host, cmd);

	if ((cmd->flags & MMC_RSP_136) && (cmd->flags & MMC_RSP_BUSY)) {
		FUNC6("%s: Unsupported response type!\n",
			FUNC4(host->mmc));
		cmd->error = -EINVAL;
		FUNC9(host, cmd->mrq);
		return;
	}

	if (!(cmd->flags & MMC_RSP_PRESENT))
		flags = SDHCI_CMD_RESP_NONE;
	else if (cmd->flags & MMC_RSP_136)
		flags = SDHCI_CMD_RESP_LONG;
	else if (cmd->flags & MMC_RSP_BUSY)
		flags = SDHCI_CMD_RESP_SHORT_BUSY;
	else
		flags = SDHCI_CMD_RESP_SHORT;

	if (cmd->flags & MMC_RSP_CRC)
		flags |= SDHCI_CMD_CRC;
	if (cmd->flags & MMC_RSP_OPCODE)
		flags |= SDHCI_CMD_INDEX;

	/* CMD19 is special in that the Data Present Select should be set */
	if (cmd->data || cmd->opcode == MMC_SEND_TUNING_BLOCK ||
	    cmd->opcode == MMC_SEND_TUNING_BLOCK_HS200)
		flags |= SDHCI_CMD_DATA;

	timeout = jiffies;
	if (host->data_timeout)
		timeout += FUNC5(host->data_timeout);
	else if (!cmd->data && cmd->busy_timeout > 9000)
		timeout += FUNC0(cmd->busy_timeout, 1000) * HZ + HZ;
	else
		timeout += 10 * HZ;
	FUNC10(host, cmd->mrq, timeout);

	FUNC15(host, FUNC1(cmd->opcode, flags), SDHCI_COMMAND);
}