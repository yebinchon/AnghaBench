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
struct request {int dummy; } ;
struct mmc_blk_request {int /*<<< orphan*/  data; } ;
struct mmc_queue_req {struct mmc_blk_request brq; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_card*,unsigned int,struct request*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mmc_queue_req* FUNC5 (struct request*) ; 

__attribute__((used)) static int FUNC6(struct mmc_card *card, struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC5(req);
	struct mmc_blk_request *brq = &mqrq->brq;
	unsigned int timeout = FUNC1(card->host, &brq->data);
	int err;

	FUNC3(card->host);

	FUNC2(card, timeout);

	err = FUNC0(card, timeout, req, NULL);

	FUNC4(card->host);

	return err;
}