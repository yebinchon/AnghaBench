#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdhci_host {int quirks; scalar_t__ data_early; scalar_t__ data; struct mmc_command* data_cmd; int /*<<< orphan*/  mmc; struct mmc_command* cmd; } ;
struct mmc_command {int flags; TYPE_1__* mrq; scalar_t__ data; int /*<<< orphan*/ * resp; } ;
struct TYPE_3__ {struct mmc_command* cmd; struct mmc_command* sbc; scalar_t__ cap_cmd_during_tfr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_BUSY ; 
 int MMC_RSP_PRESENT ; 
 int SDHCI_QUIRK_NO_BUSY_IRQ ; 
 int /*<<< orphan*/  SDHCI_RESPONSE ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,struct mmc_command*) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host)
{
	struct mmc_command *cmd = host->cmd;

	host->cmd = NULL;

	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			FUNC4(host, cmd);
		} else {
			cmd->resp[0] = FUNC5(host, SDHCI_RESPONSE);
		}
	}

	if (cmd->mrq->cap_cmd_during_tfr && cmd == cmd->mrq->cmd)
		FUNC2(host->mmc, cmd->mrq);

	/*
	 * The host can send and interrupt when the busy state has
	 * ended, allowing us to wait without wasting CPU cycles.
	 * The busy signal uses DAT0 so this is similar to waiting
	 * for data to complete.
	 *
	 * Note: The 1.0 specification is a bit ambiguous about this
	 *       feature so there might be some problems with older
	 *       controllers.
	 */
	if (cmd->flags & MMC_RSP_BUSY) {
		if (cmd->data) {
			FUNC0("Cannot wait for busy signal when also doing a data transfer");
		} else if (!(host->quirks & SDHCI_QUIRK_NO_BUSY_IRQ) &&
			   cmd == host->data_cmd) {
			/* Command complete before busy is ended */
			return;
		}
	}

	/* Finished CMD23, now send actual command. */
	if (cmd == cmd->mrq->sbc) {
		FUNC6(host, cmd->mrq->cmd);
	} else {

		/* Processed actual command. */
		if (host->data && host->data_early)
			FUNC3(host);

		if (!cmd->data)
			FUNC1(host, cmd->mrq);
	}
}