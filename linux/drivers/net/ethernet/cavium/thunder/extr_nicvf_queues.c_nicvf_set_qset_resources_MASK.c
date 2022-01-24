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
struct queue_set {void* sq_cnt; void* rq_cnt; int /*<<< orphan*/  cq_len; int /*<<< orphan*/  sq_len; int /*<<< orphan*/  rbdr_len; int /*<<< orphan*/  cq_cnt; int /*<<< orphan*/  rbdr_cnt; } ;
struct nicvf {scalar_t__ xdp_tx_queues; void* tx_queues; void* rx_queues; struct queue_set* qs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_QUEUE_LEN ; 
 int /*<<< orphan*/  DEFAULT_RBDR_CNT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_RCV_QUEUES_PER_QS ; 
 int /*<<< orphan*/  MAX_SND_QUEUES_PER_QS ; 
 int /*<<< orphan*/  RCV_BUF_COUNT ; 
 int /*<<< orphan*/  SND_QUEUE_LEN ; 
 struct queue_set* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  u8 ; 

int FUNC4(struct nicvf *nic)
{
	struct queue_set *qs;

	qs = FUNC0(&nic->pdev->dev, sizeof(*qs), GFP_KERNEL);
	if (!qs)
		return -ENOMEM;
	nic->qs = qs;

	/* Set count of each queue */
	qs->rbdr_cnt = DEFAULT_RBDR_CNT;
	qs->rq_cnt = FUNC2(u8, MAX_RCV_QUEUES_PER_QS, FUNC3());
	qs->sq_cnt = FUNC2(u8, MAX_SND_QUEUES_PER_QS, FUNC3());
	qs->cq_cnt = FUNC1(u8, qs->rq_cnt, qs->sq_cnt);

	/* Set queue lengths */
	qs->rbdr_len = RCV_BUF_COUNT;
	qs->sq_len = SND_QUEUE_LEN;
	qs->cq_len = CMP_QUEUE_LEN;

	nic->rx_queues = qs->rq_cnt;
	nic->tx_queues = qs->sq_cnt;
	nic->xdp_tx_queues = 0;

	return 0;
}