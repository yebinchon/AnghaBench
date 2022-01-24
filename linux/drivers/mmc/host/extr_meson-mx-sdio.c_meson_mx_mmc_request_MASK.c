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
struct mmc_request {struct mmc_command* cmd; struct mmc_command* sbc; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {scalar_t__ error; } ;
struct meson_mx_mmc_host {scalar_t__ base; struct mmc_request* mrq; scalar_t__ error; } ;
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 scalar_t__ MESON_MX_SDIO_ADDR ; 
 scalar_t__ FUNC0 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_command*) ; 
 struct meson_mx_mmc_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct meson_mx_mmc_host *host = FUNC2(mmc);
	struct mmc_command *cmd = mrq->cmd;

	if (!host->error)
		host->error = FUNC0(mmc, mrq);

	if (host->error) {
		cmd->error = host->error;
		FUNC3(mmc, mrq);
		return;
	}

	host->mrq = mrq;

	if (mrq->data)
		FUNC5(FUNC4(mrq->data->sg),
		       host->base + MESON_MX_SDIO_ADDR);

	if (mrq->sbc)
		FUNC1(mmc, mrq->sbc);
	else
		FUNC1(mmc, mrq->cmd);
}