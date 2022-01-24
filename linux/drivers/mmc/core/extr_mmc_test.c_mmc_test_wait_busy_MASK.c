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
struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_command {int arg; int flags; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {int caps; } ;
struct TYPE_4__ {int rca; TYPE_2__* host; } ;

/* Variables and functions */
 int MMC_CAP_WAIT_WHILE_BUSY ; 
 int MMC_CMD_AC ; 
 int MMC_RSP_R1 ; 
 int /*<<< orphan*/  MMC_SEND_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct mmc_command*) ; 
 int FUNC3 (TYPE_2__*,struct mmc_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mmc_test_card *test)
{
	int ret, busy;
	struct mmc_command cmd = {};

	busy = 0;
	do {
		FUNC0(&cmd, 0, sizeof(struct mmc_command));

		cmd.opcode = MMC_SEND_STATUS;
		cmd.arg = test->card->rca << 16;
		cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;

		ret = FUNC3(test->card->host, &cmd, 0);
		if (ret)
			break;

		if (!busy && FUNC2(&cmd)) {
			busy = 1;
			if (test->card->host->caps & MMC_CAP_WAIT_WHILE_BUSY)
				FUNC4("%s: Warning: Host did not wait for busy state to end.\n",
					FUNC1(test->card->host));
		}
	} while (FUNC2(&cmd));

	return ret;
}