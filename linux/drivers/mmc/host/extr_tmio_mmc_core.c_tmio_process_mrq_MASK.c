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
struct tmio_mmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  delayed_reset_work; struct mmc_command* cmd; } ;
struct mmc_request {struct mmc_command* cmd; scalar_t__ data; struct mmc_command* sbc; } ;
struct mmc_command {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDREQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tmio_mmc_host*,struct mmc_command*) ; 
 int FUNC4 (struct tmio_mmc_host*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tmio_mmc_host *host,
			     struct mmc_request *mrq)
{
	struct mmc_command *cmd;
	int ret;

	if (mrq->sbc && host->cmd != mrq->sbc) {
		cmd = mrq->sbc;
	} else {
		cmd = mrq->cmd;
		if (mrq->data) {
			ret = FUNC4(host, mrq->data);
			if (ret)
				goto fail;
		}
	}

	ret = FUNC3(host, cmd);
	if (ret)
		goto fail;

	FUNC2(&host->delayed_reset_work,
			      FUNC1(CMDREQ_TIMEOUT));
	return;

fail:
	host->mrq = NULL;
	mrq->cmd->error = ret;
	FUNC0(host->mmc, mrq);
}