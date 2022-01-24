#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int* resp; } ;
struct mmc_request {int cap_cmd_during_tfr; TYPE_1__* data; int /*<<< orphan*/ * sbc; } ;
struct mmc_test_req {TYPE_3__ status; int /*<<< orphan*/  sbc; struct mmc_request mrq; } ;
struct mmc_test_area {int blocks; int max_tfr; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct mmc_test_card {TYPE_2__* card; struct mmc_test_area area; } ;
struct mmc_host {int dummy; } ;
struct TYPE_5__ {struct mmc_host* host; } ;
struct TYPE_4__ {scalar_t__ stop; scalar_t__ error; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int R1_ERROR ; 
 scalar_t__ R1_STATE_TRAN ; 
 int RESULT_UNSUP_CARD ; 
 int RESULT_UNSUP_HOST ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_test_req*) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 scalar_t__ FUNC4 (struct mmc_host*,struct mmc_request*) ; 
 int FUNC5 (struct mmc_test_card*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_test_card*,struct mmc_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 struct mmc_test_req* FUNC7 () ; 
 int FUNC8 (struct mmc_test_card*,TYPE_3__*) ; 
 int FUNC9 (struct mmc_test_card*,struct mmc_request*,struct mmc_request*) ; 
 int FUNC10 (struct mmc_test_card*) ; 
 int FUNC11 (struct mmc_host*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct mmc_host*,struct mmc_request*) ; 
 unsigned long FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC16 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct mmc_test_card *test,
				     unsigned int dev_addr, int use_sbc,
				     int repeat_cmd, int write, int use_areq)
{
	struct mmc_test_req *rq = FUNC7();
	struct mmc_host *host = test->card->host;
	struct mmc_test_area *t = &test->area;
	struct mmc_request *mrq;
	unsigned long timeout;
	bool expired = false;
	int ret = 0, cmd_ret;
	u32 status = 0;
	int count = 0;

	if (!rq)
		return -ENOMEM;

	mrq = &rq->mrq;
	if (use_sbc)
		mrq->sbc = &rq->sbc;
	mrq->cap_cmd_during_tfr = true;

	FUNC6(test, mrq, t->sg, t->sg_len, dev_addr, t->blocks,
			     512, write);

	if (use_sbc && t->blocks > 1 && !mrq->sbc) {
		ret =  FUNC2(host) ?
		       RESULT_UNSUP_CARD :
		       RESULT_UNSUP_HOST;
		goto out_free;
	}

	/* Start ongoing data request */
	if (use_areq) {
		ret = FUNC9(test, mrq, NULL);
		if (ret)
			goto out_free;
	} else {
		FUNC12(host, mrq);
	}

	timeout = jiffies + FUNC14(3000);
	do {
		count += 1;

		/* Send status command while data transfer in progress */
		cmd_ret = FUNC8(test, &rq->status);
		if (cmd_ret)
			break;

		status = rq->status.resp[0];
		if (status & R1_ERROR) {
			cmd_ret = -EIO;
			break;
		}

		if (FUNC4(host, mrq))
			break;

		expired = FUNC16(jiffies, timeout);
		if (expired) {
			FUNC15("%s: timeout waiting for Tran state status %#x\n",
				FUNC3(host), status);
			cmd_ret = -ETIMEDOUT;
			break;
		}
	} while (repeat_cmd && FUNC0(status) != R1_STATE_TRAN);

	/* Wait for data request to complete */
	if (use_areq) {
		ret = FUNC9(test, NULL, mrq);
	} else {
		FUNC13(test->card->host, mrq);
	}

	/*
	 * For cap_cmd_during_tfr request, upper layer must send stop if
	 * required.
	 */
	if (mrq->data->stop && (mrq->data->error || !mrq->sbc)) {
		if (ret)
			FUNC11(host, mrq->data->stop, 0);
		else
			ret = FUNC11(host, mrq->data->stop, 0);
	}

	if (ret)
		goto out_free;

	if (cmd_ret) {
		FUNC15("%s: Send Status failed: status %#x, error %d\n",
			FUNC3(test->card->host), status, cmd_ret);
	}

	ret = FUNC5(test, mrq);
	if (ret)
		goto out_free;

	ret = FUNC10(test);
	if (ret)
		goto out_free;

	if (repeat_cmd && (t->blocks + 1) << 9 > t->max_tfr)
		FUNC15("%s: %d commands completed during transfer of %u blocks\n",
			FUNC3(test->card->host), count, t->blocks);

	if (cmd_ret)
		ret = cmd_ret;
out_free:
	FUNC1(rq);

	return ret;
}