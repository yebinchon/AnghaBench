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
struct request {int /*<<< orphan*/  rq_flags; } ;
struct TYPE_3__ {unsigned int bytes_xfered; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct mmc_queue_req {int /*<<< orphan*/  retries; TYPE_2__ brq; } ;
struct mmc_queue {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ MMC_MAX_RETRIES ; 
 int /*<<< orphan*/  RQF_QUIET ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct mmc_queue_req* FUNC6 (struct request*) ; 

__attribute__((used)) static void FUNC7(struct mmc_queue *mq, struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC6(req);
	unsigned int nr_bytes = mqrq->brq.data.bytes_xfered;

	if (nr_bytes) {
		if (FUNC4(req, BLK_STS_OK, nr_bytes))
			FUNC2(req, true);
		else
			FUNC0(req, BLK_STS_OK);
	} else if (!FUNC3(req)) {
		FUNC0(req, BLK_STS_IOERR);
	} else if (mqrq->retries++ < MMC_MAX_RETRIES) {
		FUNC2(req, true);
	} else {
		if (FUNC5(mq->card))
			req->rq_flags |= RQF_QUIET;
		FUNC1(req, BLK_STS_IOERR);
	}
}