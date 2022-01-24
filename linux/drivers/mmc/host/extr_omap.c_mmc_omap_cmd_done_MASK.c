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
struct mmc_omap_host {int /*<<< orphan*/  current_slot; struct mmc_host* mmc; int /*<<< orphan*/ * mrq; int /*<<< orphan*/ * data; int /*<<< orphan*/  cmd_abort_timer; int /*<<< orphan*/ * cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int flags; int* resp; int /*<<< orphan*/  mrq; scalar_t__ error; } ;

/* Variables and functions */
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 int FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSP0 ; 
 int /*<<< orphan*/  RSP1 ; 
 int /*<<< orphan*/  RSP2 ; 
 int /*<<< orphan*/  RSP3 ; 
 int /*<<< orphan*/  RSP4 ; 
 int /*<<< orphan*/  RSP5 ; 
 int /*<<< orphan*/  RSP6 ; 
 int /*<<< orphan*/  RSP7 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_omap_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mmc_omap_host *host, struct mmc_command *cmd)
{
	host->cmd = NULL;

	FUNC1(&host->cmd_abort_timer);

	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			/* response type 2 */
			cmd->resp[3] =
				FUNC0(host, RSP0) |
				(FUNC0(host, RSP1) << 16);
			cmd->resp[2] =
				FUNC0(host, RSP2) |
				(FUNC0(host, RSP3) << 16);
			cmd->resp[1] =
				FUNC0(host, RSP4) |
				(FUNC0(host, RSP5) << 16);
			cmd->resp[0] =
				FUNC0(host, RSP6) |
				(FUNC0(host, RSP7) << 16);
		} else {
			/* response types 1, 1b, 3, 4, 5, 6 */
			cmd->resp[0] =
				FUNC0(host, RSP6) |
				(FUNC0(host, RSP7) << 16);
		}
	}

	if (host->data == NULL || cmd->error) {
		struct mmc_host *mmc;

		if (host->data != NULL)
			FUNC2(host, host->data);
		host->mrq = NULL;
		mmc = host->mmc;
		FUNC3(host->current_slot, 1);
		FUNC4(mmc, cmd->mrq);
	}
}