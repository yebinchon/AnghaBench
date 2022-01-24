#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_command {TYPE_1__* data; } ;
struct meson_mx_mmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  cmd_timeout; struct mmc_command* cmd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int bytes_xfered; int blksz; int blocks; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mmc_command* FUNC3 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_mx_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *irq_data)
{
	struct meson_mx_mmc_host *host = (void *) irq_data;
	struct mmc_command *cmd = host->cmd, *next_cmd;

	if (FUNC0(!cmd))
		return IRQ_HANDLED;

	FUNC1(&host->cmd_timeout);

	if (cmd->data) {
		FUNC2(FUNC6(host->mmc), cmd->data->sg,
				cmd->data->sg_len,
				FUNC7(cmd->data));

		cmd->data->bytes_xfered = cmd->data->blksz * cmd->data->blocks;
	}

	next_cmd = FUNC3(cmd);
	if (next_cmd)
		FUNC5(host->mmc, next_cmd);
	else
		FUNC4(host);

	return IRQ_HANDLED;
}