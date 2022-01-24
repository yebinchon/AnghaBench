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
struct TYPE_3__ {int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct queue_set {int rbdr_cnt; int cq_cnt; } ;
struct nicvf_cq_poll {int /*<<< orphan*/  napi; } ;
struct nicvf {int link_up; int sqs_count; int num_vec; struct nicvf* pnicvf; int /*<<< orphan*/ * ptp_skb; struct nicvf_cq_poll** napi; struct queue_set* qs; int /*<<< orphan*/  rbdr_work; scalar_t__ rb_work_scheduled; int /*<<< orphan*/  qs_err_task; int /*<<< orphan*/  rbdr_task; int /*<<< orphan*/  pdev; TYPE_2__** snicvf; int /*<<< orphan*/  sqs_mode; int /*<<< orphan*/  netdev; scalar_t__ nicvf_rx_mode_wq; int /*<<< orphan*/  link_change_work; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 int /*<<< orphan*/  NICVF_INTR_MBOX ; 
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  NICVF_INTR_RBDR ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 struct nicvf* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC16 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nicvf*,union nic_mbx*) ; 
 int /*<<< orphan*/  FUNC18 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct net_device *netdev)
{
	int irq, qidx;
	struct nicvf *nic = FUNC6(netdev);
	struct queue_set *qs = nic->qs;
	struct nicvf_cq_poll *cq_poll = NULL;
	union nic_mbx mbx = {};

	/* wait till all queued set_rx_mode tasks completes */
	if (nic->nicvf_rx_mode_wq) {
		FUNC0(&nic->link_change_work);
		FUNC2(nic->nicvf_rx_mode_wq);
	}

	mbx.msg.msg = NIC_MBOX_MSG_SHUTDOWN;
	FUNC17(nic, &mbx);

	FUNC8(netdev);
	FUNC11(nic->netdev);
	nic->link_up = false;

	/* Teardown secondary qsets first */
	if (!nic->sqs_mode) {
		for (qidx = 0; qidx < nic->sqs_count; qidx++) {
			if (!nic->snicvf[qidx])
				continue;
			FUNC22(nic->snicvf[qidx]->netdev);
			nic->snicvf[qidx] = NULL;
		}
	}

	/* Disable RBDR & QS error interrupts */
	for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
		FUNC14(nic, NICVF_INTR_RBDR, qidx);
		FUNC12(nic, NICVF_INTR_RBDR, qidx);
	}
	FUNC14(nic, NICVF_INTR_QS_ERR, 0);
	FUNC12(nic, NICVF_INTR_QS_ERR, 0);

	/* Wait for pending IRQ handlers to finish */
	for (irq = 0; irq < nic->num_vec; irq++)
		FUNC20(FUNC19(nic->pdev, irq));

	FUNC21(&nic->rbdr_task);
	FUNC21(&nic->qs_err_task);
	if (nic->rb_work_scheduled)
		FUNC0(&nic->rbdr_work);

	for (qidx = 0; qidx < nic->qs->cq_cnt; qidx++) {
		cq_poll = nic->napi[qidx];
		if (!cq_poll)
			continue;
		FUNC4(&cq_poll->napi);
		/* CQ intr is enabled while napi_complete,
		 * so disable it now
		 */
		FUNC14(nic, NICVF_INTR_CQ, qidx);
		FUNC12(nic, NICVF_INTR_CQ, qidx);
		FUNC3(&cq_poll->napi);
		FUNC9(&cq_poll->napi);
	}

	FUNC10(netdev);

	for (qidx = 0; qidx < netdev->num_tx_queues; qidx++)
		FUNC7(FUNC5(netdev, qidx));

	/* Free resources */
	FUNC13(nic, false);

	/* Disable HW Qset */
	FUNC16(nic, false);

	/* disable mailbox interrupt */
	FUNC14(nic, NICVF_INTR_MBOX, 0);

	FUNC18(nic);

	FUNC15(nic);

	/* Free any pending SKB saved to receive timestamp */
	if (nic->ptp_skb) {
		FUNC1(nic->ptp_skb);
		nic->ptp_skb = NULL;
	}

	/* Clear multiqset info */
	nic->pnicvf = nic;

	return 0;
}