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
struct mmc_command {int flags; int /*<<< orphan*/  mrq; scalar_t__ error; void** resp; } ;
struct goldfish_mmc_host {int /*<<< orphan*/ * mrq; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 void* FUNC0 (struct goldfish_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMC_RESP_0 ; 
 int /*<<< orphan*/  MMC_RESP_1 ; 
 int /*<<< orphan*/  MMC_RESP_2 ; 
 int /*<<< orphan*/  MMC_RESP_3 ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (struct goldfish_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct goldfish_mmc_host *host,
				  struct mmc_command *cmd)
{
	host->cmd = NULL;
	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			/* response type 2 */
			cmd->resp[3] =
				FUNC0(host, MMC_RESP_0);
			cmd->resp[2] =
				FUNC0(host, MMC_RESP_1);
			cmd->resp[1] =
				FUNC0(host, MMC_RESP_2);
			cmd->resp[0] =
				FUNC0(host, MMC_RESP_3);
		} else {
			/* response types 1, 1b, 3, 4, 5, 6 */
			cmd->resp[0] =
				FUNC0(host, MMC_RESP_0);
		}
	}

	if (host->data == NULL || cmd->error) {
		host->mrq = NULL;
		FUNC2(FUNC1(host), cmd->mrq);
	}
}