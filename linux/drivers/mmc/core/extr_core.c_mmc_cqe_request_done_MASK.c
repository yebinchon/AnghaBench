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
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;TYPE_2__* data; int /*<<< orphan*/  tag; TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  bytes_xfered; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,struct mmc_request*) ; 

void FUNC6(struct mmc_host *host, struct mmc_request *mrq)
{
	FUNC2(host, mrq);

	/* Flag re-tuning needed on CRC errors */
	if ((mrq->cmd && mrq->cmd->error == -EILSEQ) ||
	    (mrq->data && mrq->data->error == -EILSEQ))
		FUNC1(host);

	FUNC5(host, mrq);

	if (mrq->cmd) {
		FUNC3("%s: CQE req done (direct CMD%u): %d\n",
			 FUNC0(host), mrq->cmd->opcode, mrq->cmd->error);
	} else {
		FUNC3("%s: CQE transfer done tag %d\n",
			 FUNC0(host), mrq->tag);
	}

	if (mrq->data) {
		FUNC3("%s:     %d bytes transferred: %d\n",
			 FUNC0(host),
			 mrq->data->bytes_xfered, mrq->data->error);
	}

	mrq->done(mrq);
}