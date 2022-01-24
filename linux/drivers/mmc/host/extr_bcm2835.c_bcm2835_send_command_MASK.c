#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mmc_command {int busy_timeout; int flags; int arg; int opcode; TYPE_2__* data; int /*<<< orphan*/  error; } ;
struct device {int dummy; } ;
struct bcm2835_host {int use_busy; scalar_t__ ioaddr; struct mmc_command* cmd; int /*<<< orphan*/  timeout_work; TYPE_1__* pdev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int HZ ; 
 int MMC_DATA_READ ; 
 int MMC_DATA_WRITE ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_BUSY ; 
 int MMC_RSP_PRESENT ; 
 scalar_t__ SDARG ; 
 scalar_t__ SDCMD ; 
 int SDCMD_BUSYWAIT ; 
 int SDCMD_CMD_MASK ; 
 int SDCMD_LONG_RESPONSE ; 
 int SDCMD_NEW_FLAG ; 
 int SDCMD_NO_RESPONSE ; 
 int SDCMD_READ_CMD ; 
 int SDCMD_WRITE_CMD ; 
 scalar_t__ SDHSTS ; 
 int SDHSTS_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_host*,struct mmc_command*) ; 
 int FUNC5 (struct bcm2835_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static
bool FUNC10(struct bcm2835_host *host, struct mmc_command *cmd)
{
	struct device *dev = &host->pdev->dev;
	u32 sdcmd, sdhsts;
	unsigned long timeout;

	FUNC1(host->cmd);

	sdcmd = FUNC5(host, 100);
	if (sdcmd & SDCMD_NEW_FLAG) {
		FUNC6(dev, "previous command never completed.\n");
		FUNC2(host);
		cmd->error = -EILSEQ;
		FUNC3(host);
		return false;
	}

	if (!cmd->data && cmd->busy_timeout > 9000)
		timeout = FUNC0(cmd->busy_timeout, 1000) * HZ + HZ;
	else
		timeout = 10 * HZ;
	FUNC8(&host->timeout_work, timeout);

	host->cmd = cmd;

	/* Clear any error flags */
	sdhsts = FUNC7(host->ioaddr + SDHSTS);
	if (sdhsts & SDHSTS_ERROR_MASK)
		FUNC9(sdhsts, host->ioaddr + SDHSTS);

	if ((cmd->flags & MMC_RSP_136) && (cmd->flags & MMC_RSP_BUSY)) {
		FUNC6(dev, "unsupported response type!\n");
		cmd->error = -EINVAL;
		FUNC3(host);
		return false;
	}

	FUNC4(host, cmd);

	FUNC9(cmd->arg, host->ioaddr + SDARG);

	sdcmd = cmd->opcode & SDCMD_CMD_MASK;

	host->use_busy = false;
	if (!(cmd->flags & MMC_RSP_PRESENT)) {
		sdcmd |= SDCMD_NO_RESPONSE;
	} else {
		if (cmd->flags & MMC_RSP_136)
			sdcmd |= SDCMD_LONG_RESPONSE;
		if (cmd->flags & MMC_RSP_BUSY) {
			sdcmd |= SDCMD_BUSYWAIT;
			host->use_busy = true;
		}
	}

	if (cmd->data) {
		if (cmd->data->flags & MMC_DATA_WRITE)
			sdcmd |= SDCMD_WRITE_CMD;
		if (cmd->data->flags & MMC_DATA_READ)
			sdcmd |= SDCMD_READ_CMD;
	}

	FUNC9(sdcmd | SDCMD_NEW_FLAG, host->ioaddr + SDCMD);

	return true;
}