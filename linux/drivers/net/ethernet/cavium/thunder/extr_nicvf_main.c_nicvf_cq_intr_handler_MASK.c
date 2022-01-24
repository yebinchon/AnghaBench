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
typedef  size_t u8 ;
struct snd_queue {int /*<<< orphan*/  free_cnt; } ;
struct rcv_queue {int dummy; } ;
struct queue_set {struct rcv_queue* rq; struct snd_queue* sq; struct cmp_queue* cq; } ;
struct nicvf {unsigned int xdp_tx_queues; TYPE_2__* drv_stats; struct nicvf* pnicvf; struct net_device* netdev; scalar_t__ xdp_prog; struct queue_set* qs; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct cqe_rx_t {int cqe_type; } ;
struct TYPE_3__ {int q_len; } ;
struct cmp_queue {int /*<<< orphan*/  lock; TYPE_1__ dmem; } ;
struct TYPE_4__ {int /*<<< orphan*/  txq_wake; } ;

/* Variables and functions */
#define  CQE_TYPE_INVALID 133 
#define  CQE_TYPE_RX 132 
#define  CQE_TYPE_RX_SPLIT 131 
#define  CQE_TYPE_RX_TCP 130 
#define  CQE_TYPE_SEND 129 
#define  CQE_TYPE_SEND_PTP 128 
 int CQ_CQE_COUNT ; 
 scalar_t__ FUNC0 (struct cmp_queue*,int) ; 
 scalar_t__ MIN_SQ_DESC_PER_PKT_XMIT ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_DOOR ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_HEAD ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_STATUS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct netdev_queue* FUNC2 (struct net_device*,unsigned int) ; 
 struct nicvf* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*,int /*<<< orphan*/ ,struct net_device*,char*,unsigned int) ; 
 unsigned int FUNC9 (struct nicvf*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_queue*,int) ; 
 int FUNC11 (struct nicvf*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct nicvf*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,struct napi_struct*,struct cqe_rx_t*,struct snd_queue*,struct rcv_queue*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,void*,int,int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC16 (struct nicvf*,struct snd_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct cqe_rx_t*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static int FUNC22(struct net_device *netdev, u8 cq_idx,
				 struct napi_struct *napi, int budget)
{
	int processed_cqe, work_done = 0, tx_done = 0;
	int cqe_count, cqe_head;
	int subdesc_cnt = 0;
	struct nicvf *nic = FUNC3(netdev);
	struct queue_set *qs = nic->qs;
	struct cmp_queue *cq = &qs->cq[cq_idx];
	struct cqe_rx_t *cq_desc;
	struct netdev_queue *txq;
	struct snd_queue *sq = &qs->sq[cq_idx];
	struct rcv_queue *rq = &qs->rq[cq_idx];
	unsigned int tx_pkts = 0, tx_bytes = 0, txq_idx;

	FUNC19(&cq->lock);
loop:
	processed_cqe = 0;
	/* Get no of valid CQ entries to process */
	cqe_count = FUNC11(nic, NIC_QSET_CQ_0_7_STATUS, cq_idx);
	cqe_count &= CQ_CQE_COUNT;
	if (!cqe_count)
		goto done;

	/* Get head of the valid CQ entries */
	cqe_head = FUNC11(nic, NIC_QSET_CQ_0_7_HEAD, cq_idx) >> 9;
	cqe_head &= 0xFFFF;

	while (processed_cqe < cqe_count) {
		/* Get the CQ descriptor */
		cq_desc = (struct cqe_rx_t *)FUNC0(cq, cqe_head);
		cqe_head++;
		cqe_head &= (cq->dmem.q_len - 1);
		/* Initiate prefetch for next descriptor */
		FUNC17((struct cqe_rx_t *)FUNC0(cq, cqe_head));

		if ((work_done >= budget) && napi &&
		    (cq_desc->cqe_type != CQE_TYPE_SEND)) {
			break;
		}

		switch (cq_desc->cqe_type) {
		case CQE_TYPE_RX:
			FUNC13(netdev, napi, cq_desc, sq, rq);
			work_done++;
		break;
		case CQE_TYPE_SEND:
			FUNC14(netdev, (void *)cq_desc,
					      budget, &subdesc_cnt,
					      &tx_pkts, &tx_bytes);
			tx_done++;
		break;
		case CQE_TYPE_SEND_PTP:
			FUNC15(netdev, (void *)cq_desc);
		break;
		case CQE_TYPE_INVALID:
		case CQE_TYPE_RX_SPLIT:
		case CQE_TYPE_RX_TCP:
			/* Ignore for now */
		break;
		}
		processed_cqe++;
	}

	/* Ring doorbell to inform H/W to reuse processed CQEs */
	FUNC12(nic, NIC_QSET_CQ_0_7_DOOR,
			      cq_idx, processed_cqe);

	if ((work_done < budget) && napi)
		goto loop;

done:
	/* Update SQ's descriptor free count */
	if (subdesc_cnt)
		FUNC10(sq, subdesc_cnt);

	txq_idx = FUNC9(nic, cq_idx);
	/* Handle XDP TX queues */
	if (nic->pnicvf->xdp_prog) {
		if (txq_idx < nic->pnicvf->xdp_tx_queues) {
			FUNC16(nic, sq, cq_idx);
			goto out;
		}
		nic = nic->pnicvf;
		txq_idx -= nic->pnicvf->xdp_tx_queues;
	}

	/* Wakeup TXQ if its stopped earlier due to SQ full */
	if (tx_done ||
	    (FUNC1(&sq->free_cnt) >= MIN_SQ_DESC_PER_PKT_XMIT)) {
		netdev = nic->pnicvf->netdev;
		txq = FUNC2(netdev, txq_idx);
		if (tx_pkts)
			FUNC4(txq, tx_pkts, tx_bytes);

		/* To read updated queue and carrier status */
		FUNC18();
		if (FUNC6(txq) && FUNC5(netdev)) {
			FUNC7(txq);
			nic = nic->pnicvf;
			FUNC21(nic->drv_stats->txq_wake);
			FUNC8(nic, tx_err, netdev,
				   "Transmit queue wakeup SQ%d\n", txq_idx);
		}
	}

out:
	FUNC20(&cq->lock);
	return work_done;
}