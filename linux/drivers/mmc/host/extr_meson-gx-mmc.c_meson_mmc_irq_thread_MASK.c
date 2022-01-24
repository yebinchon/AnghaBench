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
struct mmc_data {unsigned int blksz; unsigned int blocks; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct mmc_command {int /*<<< orphan*/  mrq; struct mmc_data* data; scalar_t__ error; } ;
struct meson_host {unsigned int bounce_buf_size; int /*<<< orphan*/  mmc; int /*<<< orphan*/  bounce_buf; struct mmc_command* cmd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mmc_data*) ; 
 struct mmc_command* FUNC2 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct meson_host *host = dev_id;
	struct mmc_command *next_cmd, *cmd = host->cmd;
	struct mmc_data *data;
	unsigned int xfer_bytes;

	if (FUNC0(!cmd))
		return IRQ_NONE;

	if (cmd->error) {
		FUNC5(host);
		FUNC3(host->mmc, cmd->mrq);

		return IRQ_HANDLED;
	}

	data = cmd->data;
	if (FUNC1(data)) {
		xfer_bytes = data->blksz * data->blocks;
		FUNC0(xfer_bytes > host->bounce_buf_size);
		FUNC6(data->sg, data->sg_len,
				    host->bounce_buf, xfer_bytes);
	}

	next_cmd = FUNC2(cmd);
	if (next_cmd)
		FUNC4(host->mmc, next_cmd);
	else
		FUNC3(host->mmc, cmd->mrq);

	return IRQ_HANDLED;
}