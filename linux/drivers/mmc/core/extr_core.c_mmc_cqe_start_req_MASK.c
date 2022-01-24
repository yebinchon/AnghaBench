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
struct mmc_request {int /*<<< orphan*/  tag; TYPE_1__* cmd; struct mmc_host* host; } ;
struct mmc_host {TYPE_2__* cqe_ops; } ;
struct TYPE_4__ {int (* cqe_request ) (struct mmc_host*,struct mmc_request*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*,int) ; 
 int FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 

int FUNC7(struct mmc_host *host, struct mmc_request *mrq)
{
	int err;

	/*
	 * CQE cannot process re-tuning commands. Caller must hold retuning
	 * while CQE is in use.  Re-tuning can happen here only when CQE has no
	 * active requests i.e. this is the first.  Note, re-tuning will call
	 * ->cqe_off().
	 */
	err = FUNC3(host);
	if (err)
		goto out_err;

	mrq->host = host;

	FUNC1(host, mrq, true);

	err = FUNC2(host, mrq);
	if (err)
		goto out_err;

	err = host->cqe_ops->cqe_request(host, mrq);
	if (err)
		goto out_err;

	FUNC6(host, mrq);

	return 0;

out_err:
	if (mrq->cmd) {
		FUNC4("%s: failed to start CQE direct CMD%u, error %d\n",
			 FUNC0(host), mrq->cmd->opcode, err);
	} else {
		FUNC4("%s: failed to start CQE transfer for tag %d, error %d\n",
			 FUNC0(host), mrq->tag, err);
	}
	return err;
}